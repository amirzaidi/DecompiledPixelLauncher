.class public final Lcom/google/android/gms/common/internal/I;
.super Ljava/lang/Object;


# static fields
.field private static final gH:Landroid/support/v4/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0}, Landroid/support/v4/a/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/I;->gH:Landroid/support/v4/a/k;

    return-void
.end method

.method public static iF(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Lcom/google/android/gms/common/internal/I;->gH:Landroid/support/v4/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/internal/I;->gH:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/n;->ox(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/android/gms/common/internal/I;->gH:Landroid/support/v4/a/k;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/a/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    return-object v5

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "GoogleApiAvailability"

    const-string/jumbo v4, "Missing resource: "

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v5

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "GoogleApiAvailability"

    const-string/jumbo v4, "Got empty resource: "

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v5

    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static iH(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/common/a/c;->jw(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_phone:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_text_tablet:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_text:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_text:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_wear_update_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_text:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "common_google_play_services_network_error_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/I;->iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "common_google_play_services_invalid_account_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/I;->iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "common_google_play_services_api_unavailable_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/I;->iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "common_google_play_services_sign_in_failed_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/I;->iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "common_google_play_services_restricted_profile_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/I;->iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static iI(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/I;->iH(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "common_google_play_services_resolution_required_text"

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/common/internal/I;->iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static iJ(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Unexpected error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiAvailability"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_1
    return-object v2

    :pswitch_2
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string/jumbo v1, "GoogleApiAvailability"

    const-string/jumbo v2, "Google Play services is invalid. Cannot recover."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unsupported_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "Network error occurred. Please retry request later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_network_error_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/I;->iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_9
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_a
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_invalid_account_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/I;->iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The application is not licensed to the user."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_c
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "One of the API components you attempted to connect to is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_d
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The specified account could not be signed in."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_sign_in_failed_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/I;->iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "The current user profile is restricted and could not use authenticated features."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "common_google_play_services_restricted_profile_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/I;->iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static iK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/I;->iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static iL(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/I;->iJ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "common_google_play_services_resolution_required_title"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/I;->iG(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
