.class public Lcom/sec/internal/helper/os/ServiceStateWrapper;
.super Ljava/lang/Object;
.source "ServiceStateWrapper.java"


# static fields
.field public static final NR_5G_BEARER_STATUS_ALLOCATED:I = 0x1

.field public static final NR_5G_BEARER_STATUS_MMW_ALLOCATED:I = 0x2

.field public static final NR_5G_BEARER_STATUS_NOT_ALLOCATED:I = 0x0

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    .line 32
    return-void
.end method

.method public static rilRadioTechnologyToNetworkType(I)I
    .locals 6
    .param p0, "rt"    # I

    .line 208
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string/jumbo v2, "rilRadioTechnologyToNetworkType"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 210
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 211
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 215
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->describeContents()I

    move-result v0

    return v0
.end method

.method public getDataNetworkType()I
    .locals 4

    .line 164
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getDataNetworkType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 165
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 166
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 170
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getDataRegState()I
    .locals 4

    .line 97
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getDataRegState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 99
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 103
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x1

    return v0
.end method

.method public getDataRoaming()Z
    .locals 4

    .line 142
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getDataRoaming"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 144
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 148
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    return v0
.end method

.method public getLteImsVoiceAvail()I
    .locals 4

    .line 120
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getLteImsVoiceAvail"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 122
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x1

    return v0
.end method

.method public getLteIsEbSupported()I
    .locals 4

    .line 131
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getLteIsEbSupported"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 133
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/sec/internal/helper/os/ServiceStateWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x1

    return v0
.end method

.method public getMobileDataRegState()I
    .locals 4

    .line 175
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getMobileDataRegState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 177
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x1

    return v0
.end method

.method public getNrBearerStatus()I
    .locals 4

    .line 264
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getNrBearerStatus"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 265
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 266
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRilMobileDataRadioTechnology()I
    .locals 4

    .line 197
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getRilMobileDataRadioTechnology"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 203
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 4

    .line 186
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getRilVoiceRadioTechnology"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 187
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 188
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 192
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    return v0
.end method

.method public getSnapshotStatus()I
    .locals 4

    .line 220
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getSnapshotStatus"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 221
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 222
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 226
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getState()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 4

    .line 231
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getVoiceNetworkType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 232
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 233
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 237
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getVoiceRegState()I
    .locals 4

    .line 109
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getVoiceRegState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 111
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x1

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 4

    .line 153
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getVoiceRoaming"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 155
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 159
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 4

    .line 253
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getVoiceRoamingType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 254
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 255
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 259
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public isPsOnlyReg()Z
    .locals 4

    .line 242
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "isPsOnlyReg"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 243
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 244
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 248
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public setIsManualSelection(Z)V
    .locals 1
    .param p1, "isManual"    # Z

    .line 83
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 84
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .line 67
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 68
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 47
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 48
    return-void
.end method

.method public setStateOff()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 56
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    iget-object v0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    return-void
.end method
