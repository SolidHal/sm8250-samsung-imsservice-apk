.class Lcom/sec/internal/google/ImsCallSessionImpl$1;
.super Lcom/sec/ims/IRttEventListener$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 705
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {p0}, Lcom/sec/ims/IRttEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRttEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public onRttEventBySession(ILjava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "rttEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->access$000(Lcom/sec/internal/google/ImsCallSessionImpl;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 721
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 722
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 724
    :cond_0
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "mode"    # Z
    .param p3, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 729
    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    .line 730
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 734
    :goto_0
    if-eqz p3, :cond_1

    .line 735
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v1, v1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    goto :goto_1

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    .line 740
    :cond_2
    :goto_1
    return-void
.end method
