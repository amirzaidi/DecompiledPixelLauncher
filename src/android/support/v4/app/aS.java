// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.app.RemoteInput;
import android.os.Bundle;
import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;
import android.net.Uri;
import android.app.Notification$MessagingStyle$Message;
import android.app.Notification$MessagingStyle;
import java.util.List;

class as
{
    public static void amT(final X x, final CharSequence charSequence, final CharSequence conversationTitle, final List list, final List list2, final List list3, final List list4, final List list5) {
        final Notification$MessagingStyle setConversationTitle = new Notification$MessagingStyle(charSequence).setConversationTitle(conversationTitle);
        for (int i = 0; i < list.size(); ++i) {
            final Notification$MessagingStyle$Message notification$MessagingStyle$Message = new Notification$MessagingStyle$Message((CharSequence)list.get(i), (long)list2.get(i), (CharSequence)list3.get(i));
            if (list4.get(i) != null) {
                notification$MessagingStyle$Message.setData((String)list4.get(i), (Uri)list5.get(i));
            }
            setConversationTitle.addMessage(notification$MessagingStyle$Message);
        }
        setConversationTitle.setBuilder(x.ain());
    }
    
    public static void amU(final Notification$Builder notification$Builder, final S s) {
        final Notification$Action$Builder notification$Action$Builder = new Notification$Action$Builder(s.getIcon(), s.getTitle(), s.alT());
        if (s.alR() != null) {
            final RemoteInput[] akd = n.akd(s.alR());
            for (int length = akd.length, i = 0; i < length; ++i) {
                notification$Action$Builder.addRemoteInput(akd[i]);
            }
        }
        Bundle bundle;
        if (s.getExtras() == null) {
            bundle = new Bundle();
        }
        else {
            bundle = new Bundle(s.getExtras());
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", s.alS());
        notification$Action$Builder.addExtras(bundle);
        notification$Action$Builder.setAllowGeneratedReplies(s.alS());
        notification$Builder.addAction(notification$Action$Builder.build());
    }
}
