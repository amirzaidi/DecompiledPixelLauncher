// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import android.text.TextUtils;
import com.android.launcher3.ItemInfo;
import android.view.View;
import android.content.Context;
import com.android.launcher3.util.PackageManagerHelper;
import android.view.KeyEvent;
import android.widget.TextView;
import com.android.launcher3.Utilities;
import android.text.Editable;
import com.android.launcher3.Launcher;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.ExtendedEditText$OnBackKeyListener;
import android.widget.TextView$OnEditorActionListener;
import android.text.TextWatcher;

public class AllAppsSearchBarController implements TextWatcher, TextView$OnEditorActionListener, ExtendedEditText$OnBackKeyListener
{
    protected AllAppsSearchBarController$Callbacks mCb;
    protected ExtendedEditText mInput;
    protected InputMethodManager mInputMethodManager;
    protected Launcher mLauncher;
    protected String mQuery;
    protected SearchAlgorithm mSearchAlgorithm;
    
    public void afterTextChanged(final Editable editable) {
        this.mQuery = editable.toString();
        if (this.mQuery.isEmpty()) {
            this.mSearchAlgorithm.cancel(true);
            this.mCb.clearSearchResult();
        }
        else {
            this.mSearchAlgorithm.cancel(false);
            this.mSearchAlgorithm.doSearch(this.mQuery, this.mCb);
        }
    }
    
    public void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public void focusSearchField() {
        this.mInput.showKeyboard();
    }
    
    protected void hideKeyboard() {
        this.mInputMethodManager.hideSoftInputFromWindow(this.mInput.getWindowToken(), 0);
    }
    
    public final void initialize(final SearchAlgorithm mSearchAlgorithm, final ExtendedEditText mInput, final Launcher mLauncher, final AllAppsSearchBarController$Callbacks mCb) {
        this.mCb = mCb;
        this.mLauncher = mLauncher;
        (this.mInput = mInput).addTextChangedListener((TextWatcher)this);
        this.mInput.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.mInput.setOnBackKeyListener(this);
        this.mInputMethodManager = (InputMethodManager)this.mInput.getContext().getSystemService("input_method");
        this.mSearchAlgorithm = mSearchAlgorithm;
    }
    
    public boolean isSearchFieldFocused() {
        return this.mInput.isFocused();
    }
    
    public boolean onBackKey() {
        if (Utilities.trim(this.mInput.getEditableText().toString()).isEmpty()) {
            this.reset();
            return true;
        }
        return false;
    }
    
    public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
        if (n != 3) {
            return false;
        }
        final String string = textView.getText().toString();
        return !string.isEmpty() && this.mLauncher.startActivitySafely((View)textView, PackageManagerHelper.getMarketSearchIntent((Context)this.mLauncher, string), null);
    }
    
    public void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public void refreshSearchResult() {
        if (TextUtils.isEmpty((CharSequence)this.mQuery)) {
            return;
        }
        this.mSearchAlgorithm.cancel(false);
        this.mSearchAlgorithm.doSearch(this.mQuery, this.mCb);
    }
    
    public void reset() {
        this.unfocusSearchField();
        this.mCb.clearSearchResult();
        this.mInput.setText((CharSequence)"");
        this.mQuery = null;
        this.hideKeyboard();
    }
    
    protected void unfocusSearchField() {
        final View focusSearch = this.mInput.focusSearch(130);
        if (focusSearch != null) {
            focusSearch.requestFocus();
        }
    }
}
