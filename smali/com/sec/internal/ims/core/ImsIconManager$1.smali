.class Lcom/sec/internal/ims/core/ImsIconManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 1038
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private isImsIconSupportedNW(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .line 1059
    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNWTypeChangedUpdateRequires(II)Z
    .locals 2
    .param p1, "oldNetworkType"    # I
    .param p2, "currentNetworkType"    # I

    .line 1064
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isImsIconSupportedNW(I)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isImsIconSupportedNW(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUpdateRequires(Landroid/telephony/ServiceState;)Z
    .locals 12
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1068
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1069
    .local v0, "ss":Lcom/sec/internal/helper/os/ServiceStateWrapper;
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 1070
    .local v1, "oldNetworkType":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    .line 1071
    .local v2, "oldServiceState":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v3, v3, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 1072
    .local v3, "oldVoiceRatType":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-boolean v4, v4, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    .line 1073
    .local v4, "oldRoamingState":Z
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentNetworkType(I)V

    .line 1074
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentServiceState(I)V

    .line 1075
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentVoiceRatType(I)V

    .line 1076
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentRoamingState(Z)V

    .line 1078
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v5}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v5, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-boolean v5, v5, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-eq v4, v5, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    move v5, v9

    .line 1079
    .local v5, "isRoamingStateChanged":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1080
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    if-nez v2, :cond_3

    .line 1082
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v10

    goto :goto_1

    :cond_3
    move v7, v9

    .line 1083
    .local v7, "isServiceStateChanged":Z
    :goto_1
    iget-object v8, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v8}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    new-array v6, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v11, v6, v9

    sget-object v11, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v11, v6, v10

    invoke-virtual {v8, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v6, v6, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    if-eq v3, v6, :cond_4

    move v6, v10

    goto :goto_2

    :cond_4
    move v6, v9

    .line 1085
    .local v6, "isVoiceRatTypeChanged":Z
    :goto_2
    if-nez v7, :cond_5

    iget-object v8, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v8, v8, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-direct {p0, v1, v8}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isNWTypeChangedUpdateRequires(II)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move v9, v10

    :cond_6
    return v9
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->access$000(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1042
    return-void

    .line 1044
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call state is changed to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$002(Lcom/sec/internal/ims/core/ImsIconManager;I)I

    .line 1047
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1048
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->access$400(Lcom/sec/internal/ims/core/ImsIconManager;Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1049
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->access$502(Lcom/sec/internal/ims/core/ImsIconManager;Z)Z

    .line 1050
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1053
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    .line 1056
    :cond_3
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1091
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1092
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$1;->isUpdateRequires(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 1093
    .local v0, "updateRequires":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$300(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    :cond_0
    if-eqz v0, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$600(Lcom/sec/internal/ims/core/ImsIconManager;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1096
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/ImsIconManager;->access$700(Lcom/sec/internal/ims/core/ImsIconManager;)Lcom/sec/internal/ims/core/PdnController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/PdnController;->isSuspended(Landroid/net/NetworkInfo;)Z

    move-result v2

    .line 1097
    .local v2, "isSuspend":Z
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v4

    const-string/jumbo v5, "updateRegistrationIcon on RAT change"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1098
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1102
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "isSuspend":Z
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1103
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$1;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1105
    :cond_2
    return-void
.end method
