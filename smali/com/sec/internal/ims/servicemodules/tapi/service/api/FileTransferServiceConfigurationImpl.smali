.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;
.super Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;
.source "FileTransferServiceConfigurationImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 38
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcsSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method public getImageResizeOption()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/defaultconst/FileTransferDefaultConst;->DEFALUT_IMAGERESIZEOPTION:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    .line 72
    .local v0, "imageResizeOption":Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v1, :cond_0

    .line 73
    const-string v2, "ImageResizeOption"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "mValue":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "value":I
    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    move-result-object v0

    .line 76
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start : getImageResizeOption() mValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", imageResizeOption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "mValue":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_0
    invoke-virtual {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toInt()I

    move-result v1

    .line 80
    .local v1, "vv":I
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start : getImageResizeOption() vv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v1
.end method

.method public getMaxAudioMessageLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method public getMaxFileTransfers()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/16 v0, 0xa

    return v0
.end method

.method public getMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeFileTr()J

    move-result-wide v0

    return-wide v0

    .line 96
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWarnSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtWarnSize()J

    move-result-wide v0

    return-wide v0

    .line 105
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAutoAcceptEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "bAutoAccept":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v1, :cond_0

    .line 113
    nop

    .line 114
    const-string v2, "AutoAcceptFileTransfer"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result v0

    .line 119
    :cond_1
    return v0
.end method

.method public isAutoAcceptInRoamingEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "bAutoAcceptInRoaming":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v1, :cond_0

    .line 127
    nop

    .line 128
    const-string v2, "AutoAcceptFtInRoaming"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result v0

    .line 133
    :cond_1
    return v0
.end method

.method public isAutoAcceptModeChangeable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "bAutoAcceptModeChangeable":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v1, :cond_0

    .line 142
    nop

    .line 143
    const-string v2, "AutoAcceptFtChangeable"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 145
    :cond_0
    return v0
.end method

.method public isGroupFileTransferSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoAccept(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v0, :cond_0

    .line 48
    const-string v1, "AutoAcceptFileTransfer"

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v0, :cond_0

    .line 56
    const-string v1, "AutoAcceptFtInRoaming"

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public setImageResizeOption(I)V
    .locals 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageResizeOption"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method
