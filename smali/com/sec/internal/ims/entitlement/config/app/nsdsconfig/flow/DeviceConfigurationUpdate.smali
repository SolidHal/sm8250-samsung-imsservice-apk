.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "DeviceConfigurationUpdate.java"


# static fields
.field public static final FORCE_CONFIG_UPDATE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RETRIEVE_DEVICE_CONFIG:I = 0x0

.field public static final UPDATE_DEVICE_CONFIG:I = 0x1


# instance fields
.field private mIsConfigUpdated:Z

.field private mIsForced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsForced:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsConfigUpdated:Z

    .line 56
    return-void
.end method

.method private changedGorupName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "groupname"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    const-string v2, "device_group_name"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "preGroupName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v3, "changedGorupName: not changed"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    return v2

    .line 205
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changedGorupName : changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const v2, 0x14030001

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 208
    const/4 v2, 0x1

    return v2
.end method

.method private getVersionInfo(Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceConfiguration"    # Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;

    .line 215
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;->mConfigInfo:Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;->mConfigInfo:Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;->mVersion:Ljava/lang/String;

    return-object v0

    .line 216
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getVersionInfo: configuration info is null, vail"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleResponseGetDeviceConfig(Landroid/os/Bundle;Z)V
    .locals 9
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;
    .param p2, "refresh"    # Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v0

    .line 101
    .local v0, "errorResponseCode":I
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getHttpErrRespReason(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "errorResponseReason":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponseGetDeviceConfig: refresh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", http error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "isSuccess":Z
    const-string v3, "manageConnectivity"

    if-eqz p1, :cond_2

    if-gtz v0, :cond_2

    if-nez v1, :cond_2

    .line 108
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    .line 109
    .local v4, "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    if-eqz v4, :cond_1

    .line 110
    iget v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/entitlement/util/Base64Decoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    .line 113
    iget-object v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/entitlement/util/DeviceConfigParser;->parseDeviceConfig(Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;

    move-result-object v5

    .line 114
    .local v5, "deviceConfiguration":Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "imsi":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsForced:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->persistDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;Ljava/lang/String;Z)V

    .line 116
    const/4 v2, 0x1

    .line 117
    .end local v5    # "deviceConfiguration":Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    .end local v6    # "imsi":Ljava/lang/String;
    goto :goto_0

    .line 118
    :cond_0
    iget v0, v4, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    goto :goto_0

    .line 121
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v6, "ResponseManageConnectivity is NULL"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v0, 0x578

    .line 126
    .end local v4    # "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    if-nez v2, :cond_3

    .line 127
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v5, "!!!Device config retrieval failed. report it!!!"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->notifyBootupDeviceActivationFailure(I)V

    .line 131
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleResponseGetDeviceConfig - response code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "deviceUid":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    const-string v6, "device_config_state"

    invoke-static {v5, v4, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "devicestate":Ljava/lang/String;
    const-string v7, "deviceconfig_in_progress"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    sget-object v7, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleResponseGetDeviceConfig... reset device_config_state"

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_4
    if-eqz p2, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    .line 141
    .local v6, "operation":I
    :goto_1
    invoke-virtual {p0, v2, v3, v6, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 142
    return-void
.end method

.method private isConfigVersionUpdated(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "nwVersion"    # Ljava/lang/String;
    .param p2, "dbVersion"    # Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConfigVersionUpdated: nwVersion-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dbVersion-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NWV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DBV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x14030000

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 190
    .local v1, "nwConfigVersion":D
    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 192
    .local v3, "dbConfigVersion":D
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-gez v5, :cond_1

    .line 193
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isConfigVersionUpdated: config is updated"

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1
    return v0

    .line 186
    .end local v1    # "nwConfigVersion":D
    .end local v3    # "dbConfigVersion":D
    :cond_2
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isConfigVersionUpdated: invalid version info"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v0
.end method

.method private notifyBootupDeviceActivationFailure(I)V
    .locals 6
    .param p1, "nsdsErrorCode"    # I

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "manageConnectivity"

    const/4 v2, 0x3

    invoke-static {v1, v2, p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v1

    .line 226
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string/jumbo v3, "request_status"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v3, "error_codes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 233
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v2, v5}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 235
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->notifyCallbackForNsdsEvent(I)V

    .line 236
    return-void
.end method

.method private persistDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "responseManageConnectivity"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .param p2, "deviceConfiguration"    # Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "isForced"    # Z

    .line 146
    if-eqz p1, :cond_4

    .line 152
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseManageConnectivity : messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "servicenames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "deviceConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    .line 160
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getVersionInfo(Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "nwVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "dbVersion":Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsConfigUpdated:Z

    .line 163
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isDeviceConfigAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceGroup:Ljava/lang/String;

    const-string v5, "device_group_name"

    invoke-static {v2, v3, v5, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_0
    if-nez p4, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->isConfigVersionUpdated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceGroup:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->changedGorupName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getMnoNsdsConfigStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v2

    .line 171
    .local v2, "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    if-eqz v2, :cond_3

    .line 172
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;->scheduleRefreshDeviceConfig(I)V

    goto :goto_1

    .line 168
    .end local v2    # "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "nwVersion":Ljava/lang/String;
    .end local v1    # "dbVersion":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_2

    .line 177
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ResponseManageConnectivity is NULL"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_5
    :goto_2
    return-void
.end method

.method private retrieveDeviceConfiguration()V
    .locals 10

    .line 76
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getMnoNsdsConfigStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    .line 78
    .local v0, "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    new-instance v9, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mUserAgent:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mImeiForUA:Ljava/lang/String;

    const-string v6, "1.0"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v1, "configurationRetrievalWithSIM":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "deviceUid":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getVIMSIforSIMDevice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "vimsiEap":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;->getEntitlementServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 86
    .local v5, "url":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceGroup:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->retriveDeviceConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private updateDeviceConfiguration(Z)V
    .locals 11
    .param p1, "isForced"    # Z

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "imsi":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getVIMSIforSIMDevice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "vimsiEap":Ljava/lang/String;
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsForced:Z

    .line 93
    new-instance v10, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mUserAgent:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mImeiForUA:Ljava/lang/String;

    const-string v7, "1.0"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v2, "configurationUpdate":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceGroup:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->updateDeviceConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected getMnoNsdsConfigStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->getMnoStrategy(I)Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x66

    if-eq v0, v3, :cond_1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_0

    .line 261
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown flow request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->handleResponseGetDeviceConfig(Landroid/os/Bundle;Z)V

    .line 256
    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->handleResponseGetDeviceConfig(Landroid/os/Bundle;Z)V

    .line 259
    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->updateDeviceConfiguration(Z)V

    .line 253
    goto :goto_0

    .line 249
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->updateDeviceConfiguration(Z)V

    .line 250
    goto :goto_0

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->retrieveDeviceConfiguration()V

    .line 247
    nop

    .line 263
    :goto_0
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 291
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isForced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUCS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x14030002

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 296
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v1

    .line 297
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNSDSFlowResponse: errorCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v1    # "errorCode":I
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsConfigUpdated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 301
    const/16 v1, 0x516

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iput-boolean v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsConfigUpdated:Z

    .line 305
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "request_status"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    iget v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceEventType:I

    const-string v4, "device_event_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    iget v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mRetryCount:I

    const-string/jumbo v4, "retry_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-boolean v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsForced:Z

    const-string v4, "forced_config_udpate"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string/jumbo v3, "orig_error_code"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v3, "error_codes"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 312
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v1, v4}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    iput-boolean v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mIsForced:Z

    .line 315
    return-void
.end method

.method public performDeviceConfigRetrieval(II)V
    .locals 4
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 59
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDeviceConfigRetrieval: eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceEventType:I

    .line 61
    iput p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mRetryCount:I

    .line 62
    const/4 v0, -0x1

    .line 63
    .local v0, "nsdsBaseOperation":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->getMnoNsdsConfigStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v1

    .line 64
    .local v1, "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 65
    iget v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->mDeviceEventType:I

    invoke-interface {v1, v3, v2}, Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;->getNextOperation(II)I

    move-result v0

    .line 68
    :cond_0
    if-ne v0, v2, :cond_1

    .line 69
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "performDeviceConfigRetrieval: next operation is empty."

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 72
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->queueOperation(ILandroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "nsdsBaseOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 267
    const/4 v0, -0x1

    .line 268
    .local v0, "msgId":I
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    .line 279
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "queueOperation: did not match any nsds base operations"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    const/4 v0, 0x2

    .line 277
    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x1

    .line 274
    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    .line 271
    nop

    .line 282
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 283
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 284
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->sendMessage(Landroid/os/Message;)Z

    .line 287
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    return-void
.end method
