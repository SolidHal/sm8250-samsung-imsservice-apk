.class public Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
.super Ljava/lang/Object;
.source "CmcDeviceInfo.java"


# instance fields
.field private mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field private mIsActivation:Z

.field private mIsCallActivation:Z

.field private mIsCallAllowedSdByPd:Z

.field private mIsMessageActivation:Z

.field private mIsMessageAllowedSdByPd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return-void
.end method


# virtual methods
.method public getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object v0
.end method

.method public isActivation()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    return v0
.end method

.method public isCallActivation()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return v0
.end method

.method public isCallAllowedSdByPd()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    return v0
.end method

.method public isMessageActivation()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    return v0
.end method

.method public isMessageAllowedSdByPd()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    return v0
.end method

.method public setActivation(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    return-void
.end method

.method public setCallActivation(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return-void
.end method

.method public setCallAllowedSdByPd(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    return-void
.end method

.method public setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-void
.end method

.method public setMessageActivation(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    return-void
.end method

.method public setMessageAllowedSdByPd(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceCategory:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCallAllowedSdByPd:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isMessageAllowedSdByPd:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isMessageActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCallActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
