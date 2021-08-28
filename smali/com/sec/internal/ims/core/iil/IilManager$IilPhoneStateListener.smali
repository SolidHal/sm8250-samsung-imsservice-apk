.class final Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "IilManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IilPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IilManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IilManager;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    .line 896
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 897
    return-void
.end method

.method private doUpdateFeature(I)V
    .locals 5
    .param p1, "networkType"    # I

    .line 934
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    .line 935
    .local v0, "networkclass":I
    const/4 v1, 0x0

    .line 936
    .local v1, "doUpdate":Z
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/iil/IilManager;->access$000(Lcom/sec/internal/ims/core/iil/IilManager;)I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 939
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v2, v2, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 940
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 941
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/iil/IilManager;->access$200(Lcom/sec/internal/ims/core/iil/IilManager;)I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 942
    const/4 v1, 0x1

    goto :goto_0

    .line 944
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/core/iil/IilManager;->access$300(Lcom/sec/internal/ims/core/iil/IilManager;Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 945
    :cond_2
    const/4 v1, 0x1

    .line 948
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->access$002(Lcom/sec/internal/ims/core/iil/IilManager;I)I

    .line 949
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->access$202(Lcom/sec/internal/ims/core/iil/IilManager;I)I

    .line 950
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/iil/IilManager;->access$400(Lcom/sec/internal/ims/core/iil/IilManager;)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 951
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/iil/IilManager;->access$400(Lcom/sec/internal/ims/core/iil/IilManager;)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/iil/IilManager;->access$500(Lcom/sec/internal/ims/core/iil/IilManager;Lcom/sec/ims/ImsRegistration;)V

    .line 953
    :cond_4
    return-void

    .line 937
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged(): state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    .line 902
    invoke-static {v2}, Lcom/sec/internal/ims/core/iil/IilManager;->access$000(Lcom/sec/internal/ims/core/iil/IilManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSDS_SI_DDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    .line 904
    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IilManager;->access$100(Lcom/sec/internal/ims/core/iil/IilManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "onDataConnectionStateChanged(): Not DDS SIM"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 906
    return-void

    .line 908
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->doUpdateFeature(I)V

    .line 909
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 913
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 914
    .local v0, "serviceState":Lcom/sec/internal/helper/os/ServiceStateWrapper;
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v1, v1, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged(): data regstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 914
    const-string v3, "IilManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/iil/IilManager;->access$100(Lcom/sec/internal/ims/core/iil/IilManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 918
    .local v1, "subMan":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DSDS_SI_DDS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v2, v2, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 919
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 920
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v2, v2, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v4, "onServiceStateChanged(): Not DDS SIM"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 921
    return-void

    .line 924
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v2, v2, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v4, "onServiceStateChanged(): not in Service"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 926
    return-void

    .line 929
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    .line 930
    .local v2, "networkType":I
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;->doUpdateFeature(I)V

    .line 931
    return-void
.end method
