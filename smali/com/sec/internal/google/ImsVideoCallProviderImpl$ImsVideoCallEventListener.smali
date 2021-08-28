.class Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
.super Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsVideoCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsVideoCallEventListener"
.end annotation


# instance fields
.field private mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

.field final synthetic this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;

    .line 412
    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;-><init>()V

    .line 410
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    .line 413
    iput-object p2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    .line 414
    return-void
.end method

.method private convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;
    .locals 4
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 822
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 823
    return-object v0

    .line 826
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertStateToVideoProfile(I)I

    move-result v1

    .line 827
    .local v1, "videoState":I
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    or-int/lit8 v1, v1, 0x4

    .line 830
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertQualityToVideoProfile(I)I

    move-result v2

    .line 832
    .local v2, "quality":I
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    if-nez v3, :cond_2

    .line 833
    return-object v0

    .line 835
    :cond_2
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object v0
.end method

.method private convertQualityToVideoProfile(I)I
    .locals 2
    .param p1, "quality"    # I

    .line 772
    const/4 v0, 0x4

    .line 773
    .local v0, "ret":I
    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    const/4 v0, 0x1

    .line 776
    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, 0x2

    .line 779
    goto :goto_0

    .line 781
    :cond_2
    const/4 v0, 0x3

    .line 782
    nop

    .line 786
    :goto_0
    return v0
.end method

.method private convertStateToVideoProfile(I)I
    .locals 2
    .param p1, "state"    # I

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "ret":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    const/4 v0, 0x2

    .line 803
    goto :goto_0

    .line 799
    :cond_1
    const/4 v0, 0x1

    .line 800
    goto :goto_0

    .line 805
    :cond_2
    const/4 v0, 0x3

    .line 806
    goto :goto_0

    .line 796
    :cond_3
    const/4 v0, 0x0

    .line 797
    nop

    .line 815
    :goto_0
    return v0
.end method


# virtual methods
.method public changeCameraCapabilities(III)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_1

    .line 656
    :cond_0
    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {v0, p2, p3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 658
    .local v0, "cameraCapabilities":Landroid/telecom/VideoProfile$CameraCapabilities;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {v1, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    goto :goto_0

    .line 659
    :catch_0
    move-exception v1

    .line 661
    :goto_0
    return-void

    .line 653
    .end local v0    # "cameraCapabilities":Landroid/telecom/VideoProfile$CameraCapabilities;
    :cond_1
    :goto_1
    return-void
.end method

.method public getSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public onCameraState(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 506
    :cond_0
    const v0, 0x30000026

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 509
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 527
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 528
    goto :goto_0

    .line 523
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 524
    goto :goto_0

    .line 516
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 517
    goto :goto_0

    .line 511
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    goto :goto_1

    .line 534
    :goto_0
    nop

    .line 535
    :goto_1
    return-void

    .line 503
    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onChangeCallDataUsage(IJ)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "dataUsage"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_1

    .line 763
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 766
    :goto_0
    return-void

    .line 759
    :cond_1
    :goto_1
    return-void
.end method

.method public onChangePeerDimension(III)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_1

    .line 626
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 629
    :goto_0
    return-void

    .line 622
    :cond_1
    :goto_1
    return-void
.end method

.method public onEmojiState(II)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 724
    :cond_0
    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 738
    :cond_1
    const/16 v1, 0x4b3

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 739
    goto :goto_0

    .line 734
    :cond_2
    const/16 v1, 0x4b2

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 735
    goto :goto_0

    .line 730
    :cond_3
    const/16 v1, 0x4b1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 731
    goto :goto_0

    .line 726
    :cond_4
    const/16 v1, 0x4b0

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    nop

    .line 745
    :goto_0
    goto :goto_1

    .line 744
    :catch_0
    move-exception v0

    .line 746
    :goto_1
    return-void

    .line 720
    :cond_5
    :goto_2
    return-void
.end method

.method public onRecordState(II)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 678
    :cond_0
    if-eqz p2, :cond_6

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    const/16 v1, 0x457

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 701
    goto :goto_0

    .line 696
    :cond_2
    const/16 v1, 0x44f

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 697
    goto :goto_0

    .line 692
    :cond_3
    const/16 v1, 0x44e

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 693
    goto :goto_0

    .line 688
    :cond_4
    const/16 v1, 0x456

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 689
    goto :goto_0

    .line 684
    :cond_5
    const/16 v1, 0x44d

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 685
    goto :goto_0

    .line 680
    :cond_6
    const/16 v1, 0x44c

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    nop

    .line 707
    :goto_0
    goto :goto_1

    .line 706
    :catch_0
    move-exception v0

    .line 708
    :goto_1
    return-void

    .line 674
    :cond_7
    :goto_2
    return-void
.end method

.method public onVideoOrientChanged(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    return-void
.end method

.method public onVideoQualityChanged(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 592
    :cond_0
    if-eqz p2, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    .line 603
    goto :goto_0

    .line 598
    :cond_2
    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    .line 599
    goto :goto_0

    .line 594
    :cond_3
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    nop

    .line 609
    :goto_0
    goto :goto_1

    .line 608
    :catch_0
    move-exception v0

    .line 610
    :goto_1
    return-void

    .line 588
    :cond_4
    :goto_2
    return-void
.end method

.method public onVideoState(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_2

    .line 550
    :cond_0
    const v0, 0x30000027

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 553
    const/4 v0, 0x2

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 569
    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$202(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)Z

    .line 564
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 565
    goto :goto_0

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    .line 560
    goto :goto_0

    .line 555
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {v1, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    nop

    .line 575
    :goto_0
    goto :goto_1

    .line 574
    :catch_0
    move-exception v0

    .line 576
    :goto_1
    return-void

    .line 547
    :cond_5
    :goto_2
    return-void
.end method

.method public receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "mediaProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object v0

    .line 437
    .local v0, "videoProfile":Landroid/telecom/VideoProfile;
    if-nez v0, :cond_1

    .line 438
    return-void

    .line 442
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {v1, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 445
    :goto_0
    return-void

    .line 433
    .end local v0    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_2
    :goto_1
    return-void
.end method

.method public receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "status"    # I
    .param p3, "requestedProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p4, "responseProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez v0, :cond_0

    goto :goto_3

    .line 459
    :cond_0
    const/4 v0, 0x0

    .line 460
    .local v0, "result":I
    invoke-direct {p0, p3}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object v1

    .line 461
    .local v1, "reqVideoProfile":Landroid/telecom/VideoProfile;
    invoke-direct {p0, p4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object v2

    .line 463
    .local v2, "resVideoProfile":Landroid/telecom/VideoProfile;
    const/16 v3, 0xc8

    if-ne p2, v3, :cond_3

    .line 464
    const/4 v0, 0x1

    .line 465
    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 470
    iget-object v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$202(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)Z

    goto :goto_1

    .line 466
    :cond_2
    :goto_0
    return-void

    .line 472
    :cond_3
    const/16 v3, 0x456

    if-ne p2, v3, :cond_4

    .line 473
    const/4 v0, 0x5

    goto :goto_1

    .line 474
    :cond_4
    const/16 v3, 0x455

    if-eq p2, v3, :cond_5

    const/16 v3, 0x1e7

    if-ne p2, v3, :cond_6

    .line 476
    :cond_5
    const/4 v0, 0x2

    .line 480
    :cond_6
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_2

    .line 481
    :catch_0
    move-exception v3

    .line 483
    :goto_2
    return-void

    .line 456
    .end local v0    # "result":I
    .end local v1    # "reqVideoProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "resVideoProfile":Landroid/telecom/VideoProfile;
    :cond_7
    :goto_3
    return-void
.end method

.method public setVideoPause(IZ)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "isVideoPause"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$100(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$000(Lcom/sec/internal/google/ImsVideoCallProviderImpl;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    invoke-static {v0, p2}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->access$202(Lcom/sec/internal/google/ImsVideoCallProviderImpl;Z)Z

    .line 641
    return-void

    .line 637
    :cond_1
    :goto_0
    return-void
.end method
