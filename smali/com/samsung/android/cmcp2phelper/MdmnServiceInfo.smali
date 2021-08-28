.class public Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
.super Ljava/lang/Object;
.source "MdmnServiceInfo.java"


# instance fields
.field deviceId:Ljava/lang/String;

.field lineId:Ljava/lang/String;

.field serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "samsung_cmc"

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->serviceName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->lineId:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->serviceName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->lineId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->lineId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.samsung.android.cmcp2phelper.MdmnServiceInfo{serviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
