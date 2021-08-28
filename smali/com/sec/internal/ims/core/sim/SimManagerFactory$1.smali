.class Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 9

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "doNotify":Z
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$000()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v2, "SimManagerFactory"

    if-nez v1, :cond_0

    .line 104
    const-string/jumbo v3, "subInfoList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 108
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSubscriptionsChanged: subInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$100()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 115
    .local v6, "manager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 116
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 117
    const/4 v0, 0x1

    .line 118
    invoke-interface {v6, v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_2

    .line 120
    :cond_1
    const-string v7, "Do not notify: SubId is not changed."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v6    # "manager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_2
    :goto_2
    goto :goto_1

    .line 124
    :cond_3
    if-eqz v0, :cond_4

    .line 125
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$200()Lcom/sec/internal/helper/RegistrantList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 127
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    goto :goto_0

    .line 129
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$000()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v3

    .line 130
    .local v3, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 132
    .local v4, "subId":I
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v5

    .line 133
    .local v5, "currentDefaultPhoneId":I
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ltz v4, :cond_8

    if-ne v5, v3, :cond_6

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$300()I

    move-result v6

    if-eq v6, v4, :cond_8

    .line 135
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data subsciption changed: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->setDefaultPhoneId(I)V

    .line 138
    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$302(I)I

    .line 140
    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v6

    .line 141
    .local v6, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v6, :cond_7

    .line 142
    const-string v7, "SimManagerMainInstance is not exist. Do not notify."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_7
    invoke-interface {v6, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->notifyDDSChanged(I)V

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$400()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->access$500()Lcom/sec/internal/helper/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    .line 151
    .end local v6    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_8
    return-void
.end method
