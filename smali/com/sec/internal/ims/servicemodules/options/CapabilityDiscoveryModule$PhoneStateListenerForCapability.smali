.class final Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;
.super Landroid/telephony/PhoneStateListener;
.source "CapabilityDiscoveryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneStateListenerForCapability"
.end annotation


# instance fields
.field mNetworkType:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1016
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->mNetworkType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$1;

    .line 1015
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    return-void
.end method

.method private fetchCapabilities(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$PhoneStateListenerForCapability$QntSGhd6RNAdU3D8ZXA98oPKPhw;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$PhoneStateListenerForCapability$QntSGhd6RNAdU3D8ZXA98oPKPhw;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;I)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->post(Ljava/lang/Runnable;)Z

    .line 1064
    return-void
.end method

.method private hasCshFeature(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 1056
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1055
    :goto_1
    return v0
.end method


# virtual methods
.method public synthetic lambda$fetchCapabilities$1$CapabilityDiscoveryModule$PhoneStateListenerForCapability(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1061
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 1062
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    .line 1063
    return-void
.end method

.method public synthetic lambda$onDataConnectionStateChanged$0$CapabilityDiscoveryModule$PhoneStateListenerForCapability(II)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "state"    # I

    .line 1044
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->mNetworkType:I

    if-eq p1, v0, :cond_0

    .line 1045
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->mNetworkType:I

    .line 1046
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$700(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->hasCshFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$800(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->fetchCapabilities(I)V

    .line 1051
    :cond_0
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$102(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)Z

    .line 1025
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->hasCshFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->fetchCapabilities(I)V

    goto :goto_2

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 1031
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$102(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)Z

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->hasCshFeature(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 1037
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->fetchCapabilities(I)V

    goto :goto_2

    .line 1034
    :cond_4
    :goto_1
    return-void

    .line 1039
    :cond_5
    :goto_2
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 1043
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$PhoneStateListenerForCapability$6Q35ncUiDHU45T8jD8bSmDyf_k0;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$PhoneStateListenerForCapability$6Q35ncUiDHU45T8jD8bSmDyf_k0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;II)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->post(Ljava/lang/Runnable;)Z

    .line 1052
    return-void
.end method
