.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
.super Ljava/lang/Object;
.source "PresenceSubscription.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EXPIRED:I = 0x2

.field public static final FAILED:I = 0x6

.field public static final FETCH_DONE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceSubscription"

.field public static final ONLINE:I = 0x1

.field public static final REQUESTED:I = 0x0

.field public static final RETRIED:I = 0x5


# instance fields
.field private mDropUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mExpiry:I

.field private mId:Ljava/lang/String;

.field private mPhoneId:I

.field private mRetryCount:I

.field private mSingleFetch:Z

.field private mState:I

.field private mTimestamp:Ljava/util/Date;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field private mUriList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "subscriptionId"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    .line 41
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mId:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    .line 43
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    .line 45
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    .line 46
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 47
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mSingleFetch:Z

    .line 49
    return-void
.end method


# virtual methods
.method public addDropUriAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-void
.end method

.method public addUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 56
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addUriAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method public clone()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->clone()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsDropUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 84
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDropUris()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    return-object v0
.end method

.method public getExpiry()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mPhoneId:I

    return v0
.end method

.method public getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    return v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUriList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    return-object v0
.end method

.method public isExpired()Z
    .locals 9

    .line 146
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 151
    .local v0, "current":Ljava/util/Date;
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 152
    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    .line 153
    return v1

    .line 155
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 147
    .end local v0    # "current":Ljava/util/Date;
    :cond_2
    :goto_0
    return v1
.end method

.method public isLongLivedSubscription()Z
    .locals 6

    .line 175
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 176
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 178
    .local v1, "offset":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLongLivedSubscription: interval from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v4, "PresenceSubscription"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public isSingleFetch()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mSingleFetch:Z

    return v0
.end method

.method public remove(Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 64
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public removeDropUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 80
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public retrySubscription()V
    .locals 1

    .line 171
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    .line 172
    return-void
.end method

.method public setExpiry(I)V
    .locals 0
    .param p1, "expiry"    # I

    .line 88
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    .line 89
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 96
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mPhoneId:I

    .line 97
    return-void
.end method

.method public setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V
    .locals 0
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 159
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 160
    return-void
.end method

.method public setSingleFetch(Z)V
    .locals 0
    .param p1, "singleFetch"    # Z

    .line 137
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mSingleFetch:Z

    .line 138
    return-void
.end method

.method public updateState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 112
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    .line 113
    return-void
.end method

.method public updateTimestamp()V
    .locals 1

    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    .line 121
    return-void
.end method
