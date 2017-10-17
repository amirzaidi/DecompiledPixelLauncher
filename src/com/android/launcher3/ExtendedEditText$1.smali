.class final Lcom/android/launcher3/ExtendedEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/ExtendedEditText;


# direct methods
.method constructor <init>(Lcom/android/launcher3/ExtendedEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText$1;->this$0:Lcom/android/launcher3/ExtendedEditText;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText$1;->this$0:Lcom/android/launcher3/ExtendedEditText;

    invoke-static {v0}, Lcom/android/launcher3/ExtendedEditText;->-wrap0(Lcom/android/launcher3/ExtendedEditText;)Z

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText$1;->this$0:Lcom/android/launcher3/ExtendedEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->-set0(Lcom/android/launcher3/ExtendedEditText;Z)Z

    .line 89
    return-void
.end method
