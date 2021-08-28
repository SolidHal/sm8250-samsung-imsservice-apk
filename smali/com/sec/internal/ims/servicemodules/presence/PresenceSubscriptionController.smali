.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;
.super Ljava/lang/Object;
.source "PresenceSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceSubscriptionController"

.field private static mLazySubscriptionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private static mPendingSubscriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private static mSubscriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static addLazySubscription(Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 45
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method static addPendingSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 1
    .param p0, "subscription"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 49
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method static addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 1
    .param p0, "subscription"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method static checkLazySubscription(Lcom/sec/ims/util/ImsUri;Z)Z
    .locals 1
    .param p0, "telUri"    # Lcom/sec/ims/util/ImsUri;
    .param p1, "isLongLivedSubscription"    # Z

    .line 155
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    .line 156
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 162
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static cleanExpiredSubscription()V
    .locals 4

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 115
    .local v1, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanExpiredSubscription(): expired uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v3, "PresenceSubscriptionController"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 120
    .end local v1    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method static clearPendingSubscription()V
    .locals 1

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    return-void
.end method

.method static getPendingSubscription()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    return-object v0
.end method

.method static getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .locals 4
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p1, "isSingleFetch"    # Z
    .param p2, "phoneId"    # I

    .line 61
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    const-string v1, "PresenceSubscriptionController"

    const-string v2, "getSubscription: uri is null"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    return-object v0

    .line 66
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 68
    .local v2, "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p2, :cond_1

    if-nez p1, :cond_2

    .line 69
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v2, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    return-object v2

    .line 76
    .end local v2    # "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_3
    goto :goto_0

    .line 77
    :cond_4
    return-object v0
.end method

.method static getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .locals 4
    .param p0, "subscriptionId"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 81
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 82
    const-string v1, "PresenceSubscriptionController"

    const-string v2, "getSubscription: subscriptionId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0

    .line 86
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 87
    .local v2, "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 88
    return-object v2

    .line 90
    .end local v2    # "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_1
    goto :goto_0

    .line 91
    :cond_2
    return-object v0
.end method

.method static hasSubscription(Lcom/sec/ims/util/ImsUri;)Z
    .locals 3
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 96
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 98
    .local v1, "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v1    # "sub":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static removeSubscription(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const-string v0, "PresenceSubscriptionController"

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 127
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSubscription: uris size is over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 137
    .local v1, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 139
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 141
    goto :goto_2

    .line 143
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_4

    .line 145
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 146
    .restart local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->remove(Lcom/sec/ims/util/ImsUri;)V

    .line 149
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_5
    goto :goto_3

    .line 151
    .end local v1    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :cond_6
    :goto_4
    goto :goto_0

    .line 152
    :cond_7
    return-void

    .line 125
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;>;"
    :cond_8
    :goto_5
    const-string/jumbo v1, "removeSubscription: uris null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method
