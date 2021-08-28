.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;
.super Lcom/sec/ims/IEpdgListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgListenerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IEpdgListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .param p2, "x1"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;

    .line 784
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 789
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 790
    add-int/lit8 v0, v0, -0x1

    .line 792
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 793
    .local v1, "availability":Z
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$800(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)[Z

    move-result-object v2

    aput-boolean v1, v2, p1

    .line 794
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v2, p1, v1, p3}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgAvailable(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "availability":Z
    goto :goto_2

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 797
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 801
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 823
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 807
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 808
    add-int/lit8 v0, v0, -0x1

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/ims/ISemEpdgListener;->onHandoverResult(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 811
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 813
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 818
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 827
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 829
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 830
    add-int/lit8 v0, v0, -0x1

    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/ims/ISemEpdgListener;->onIpsecConnection(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 833
    :catch_0
    move-exception v1

    .line 834
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 835
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 839
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 845
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 846
    add-int/lit8 v0, v0, -0x1

    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/ims/ISemEpdgListener;->onIpsecDisconnection(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 851
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 855
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 860
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 881
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 866
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 867
    add-int/lit8 v0, v0, -0x1

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgShowPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 870
    :catch_0
    move-exception v1

    .line 871
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 872
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 876
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
