.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;
.super Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;
.source "ChatServiceConfigurationImpl.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .locals 1
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 20
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;-><init>()V

    .line 14
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 22
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 23
    return-void
.end method


# virtual methods
.method public getChatTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    .line 31
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGeolocExpirationTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/16 v0, 0x708

    return v0
.end method

.method public getGeolocLabelMaxLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/16 v0, 0xc8

    return v0
.end method

.method public getGroupChatMaxParticipants()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxAdhocGroupSize()I

    .line 52
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupChatMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSize1ToM()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupChatMinParticipants()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x3

    return v0
.end method

.method public getGroupChatSubjectMaxLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/16 v0, 0x64

    return v0
.end method

.method public getIsComposingTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/16 v0, 0x14

    return v0
.end method

.method public getOneToOneChatMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSize1To1()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChatSf()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChatWarnSF()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImWarnSf()Z

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupChatSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRespondToDisplayReportsEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 122
    .local v0, "bRespondDisplay":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v1, :cond_0

    .line 123
    nop

    .line 125
    const-string v2, "ChatRespondToDisplayReports"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 127
    :cond_0
    return v0
.end method

.method public isSmsFallback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isSmsFallbackAuth()Z

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRespondToDisplayReports(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRespondToDisplayReports() enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v0, :cond_0

    .line 144
    const-string v1, "ChatRespondToDisplayReports"

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 146
    :cond_0
    return-void
.end method
