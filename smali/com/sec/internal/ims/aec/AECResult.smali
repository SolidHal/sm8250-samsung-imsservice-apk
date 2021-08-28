.class public Lcom/sec/internal/ims/aec/AECResult;
.super Ljava/lang/Object;
.source "AECResult.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/AECResult;->LOG_TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/internal/ims/aec/AECResult;->mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method getAkaTokenReady(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECResult;->mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method handleCompletedEntitlementVoLTE(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "volteAutoOn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "autoOn":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v3, "volteEntitlementstatus"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "status":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 46
    .local v3, "version":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v4

    .line 48
    .local v4, "usm":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-lez v3, :cond_3

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 49
    if-ne v0, v5, :cond_0

    .line 50
    iget-object v6, p0, Lcom/sec/internal/ims/aec/AECResult;->LOG_TAG:Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    const-string v8, "handleCompletedEntitlementVoLTE: auto on"

    invoke-static {v6, v8, v7}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    iget-object v6, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v2, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v7, v8}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 54
    .local v6, "callType":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 55
    iget-object v7, p0, Lcom/sec/internal/ims/aec/AECResult;->LOG_TAG:Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    const-string v9, "handleCompletedEntitlementVoLTE: default on"

    invoke-static {v7, v9, v8}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    iget-object v7, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v2, v8}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECResult;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCompletedEntitlementVoLTE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v7, v8}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v6, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 63
    .end local v6    # "callType":I
    :goto_0
    if-eqz v4, :cond_2

    .line 64
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 69
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/AECResult;->sendTryRegister(I)V

    goto :goto_1

    .line 72
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/aec/AECResult;->LOG_TAG:Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    const-string v7, "handleCompletedEntitlementVoLTE: off"

    invoke-static {v5, v7, v6}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    if-eqz v4, :cond_4

    .line 75
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 80
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/AECResult;->sendDeRegister(I)V

    .line 83
    :cond_5
    :goto_1
    return-void
.end method

.method handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 90
    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    nop

    .line 92
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    nop

    .line 94
    const-string/jumbo v2, "vowifiAutoOn"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    nop

    .line 96
    const-string/jumbo v2, "vowifiActivationMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    nop

    .line 98
    const-string/jumbo v2, "serviceflow_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    nop

    .line 100
    const-string/jumbo v2, "serviceflow_userdata"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    nop

    .line 102
    const-string v2, "messageForIncompatible"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 105
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method sendDeRegister(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 37
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 38
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/16 v1, 0x90

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    .line 39
    return-void
.end method

.method sendTryRegister(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 32
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 33
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    .line 34
    return-void
.end method

.method setAkaTokenReady(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "set"    # Z

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECResult;->mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    return-void
.end method

.method updateAkaToken(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "response"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECResult;->getAkaTokenReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.AKA_TOKEN_RETRIEVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xc8

    const-string/jumbo v3, "request_status"

    if-ne p2, v2, :cond_0

    .line 121
    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    :goto_0
    const-string v0, "com.samsung.android.geargplugin"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.permission.RECEIVE_AKA_TOKEN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 128
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
