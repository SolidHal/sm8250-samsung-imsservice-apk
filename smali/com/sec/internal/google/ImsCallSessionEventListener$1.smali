.class Lcom/sec/internal/google/ImsCallSessionEventListener$1;
.super Landroid/os/Handler;
.source "ImsCallSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/ImsCallSessionEventListener;->onErrorBeforeNego(ILjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsCallSessionEventListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsCallSessionEventListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/ImsCallSessionEventListener;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 413
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionEventListener$1;->this$0:Lcom/sec/internal/google/ImsCallSessionEventListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 416
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionEventListener$1;->this$0:Lcom/sec/internal/google/ImsCallSessionEventListener;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionEventListener;->mIcsi:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    nop

    .line 426
    :goto_0
    return-void
.end method
