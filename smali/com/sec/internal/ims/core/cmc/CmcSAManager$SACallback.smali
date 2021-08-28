.class Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "CmcSAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "CmcSAManager"

    if-nez p3, :cond_0

    .line 98
    const-string v1, "onReceiveAccessToken: resultData is null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_0
    if-eqz p2, :cond_1

    .line 103
    const-string v1, "access_token"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "accessToken":Ljava/lang/String;
    const-string/jumbo v2, "user_id"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "userId":Ljava/lang/String;
    const-string v3, "mcc"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "mcc":Ljava/lang/String;
    const-string v4, "api_server_url"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "api_server_url":Ljava/lang/String;
    const-string v5, "auth_server_url"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "auth_server_url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success to get user id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Acess Token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " api_server_url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " auth_server_url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mcc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcSaInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$600(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    .line 115
    .end local v1    # "accessToken":Ljava/lang/String;
    .end local v2    # "userId":Ljava/lang/String;
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "api_server_url":Ljava/lang/String;
    .end local v5    # "auth_server_url":Ljava/lang/String;
    nop

    .line 124
    return-void

    .line 116
    :cond_1
    const-string v1, "error_code"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "errorCode":Ljava/lang/String;
    const-string v2, "SAC_0402"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const-string v2, "Need to Sign In"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_2
    const-string v2, "Error case"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$600(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V

    .line 122
    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method
