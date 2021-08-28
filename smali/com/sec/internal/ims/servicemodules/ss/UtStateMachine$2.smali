.class Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;
.super Ljava/lang/Object;
.source "UtStateMachine.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/PdnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 1891
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 1894
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPdnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 1896
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p2}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$002(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)Landroid/net/Network;

    .line 1899
    const/4 v0, 0x0

    .line 1900
    .local v0, "apnName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$100(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;

    move-result-object v1

    .line 1901
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1902
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1903
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 1904
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1906
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$100(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$300(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    invoke-static {v4, v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$202(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    .line 1908
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$400(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    .line 1909
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1911
    .end local v0    # "apnName":Ljava/lang/String;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    return-void
.end method

.method public onDisconnected(IZ)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "isPdnUp"    # Z

    .line 1915
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 1917
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->access$002(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)Landroid/net/Network;

    .line 1918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    .line 1919
    return-void
.end method

.method public onResumed(I)V
    .locals 4
    .param p1, "networkType"    # I

    .line 1931
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v0, :cond_0

    .line 1932
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    .line 1934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    .line 1936
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1939
    :cond_0
    return-void
.end method

.method public onSuspended(I)V
    .locals 4
    .param p1, "networkType"    # I

    .line 1923
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v0, :cond_0

    .line 1924
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSuspended "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    .line 1927
    :cond_0
    return-void
.end method
