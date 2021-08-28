.class public final Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.super Ljava/lang/Object;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;,
        Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;
    }
.end annotation


# static fields
.field private static final DELAY_REFRESH_COUNT:I = 0x12c

.field private static final DELAY_REFRESH_TIME:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_COUNT:I = 0x3e8


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private final mCapabilitiesCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;"
        }
    .end annotation
.end field

.field private mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

.field private mContactCurCount:I

.field private final mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsBlockedContactChange:Z

.field private mIsBlockedInitialContactSyncBeforeRegi:Z

.field private mIsContactUpdated:Z

.field private mIsLimiting:Z

.field private mIsThrottle:Z

.field private mLastRawId:Ljava/lang/String;

.field private mLastRefreshTimeInMs:J

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

.field private mPrevRefreshTimeInMs:J

.field private final mRemovedNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartIndex:I

.field private final mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p2, "capabilitiesMapList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    .line 68
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    .line 76
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    .line 82
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    .line 83
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:J

    .line 86
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    .line 88
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 89
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 99
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 100
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 105
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    .line 106
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 108
    .local v2, "phoneId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;>;"
    .end local v2    # "phoneId":Ljava/lang/Integer;
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->onStartContactSync()V

    return-void
.end method

.method private changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "e164number"    # Ljava/lang/String;

    .line 264
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    const-string v1, "mx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 267
    :cond_1
    return-object p2
.end method

.method private checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "e164number"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 243
    return-object v0

    .line 246
    :cond_0
    const-string v1, "*67"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*82"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing for special character"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 251
    :cond_2
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 255
    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    const-string v2, "mx"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/sec/internal/helper/UriUtil;->isValidNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 257
    return-object v0

    .line 260
    :cond_5
    return-object p1

    .line 252
    :cond_6
    :goto_0
    return-object v0
.end method

.method private dumpContactList()V
    .locals 9

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 428
    .local v1, "count":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/options/Contact;

    .line 429
    .local v3, "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x28

    if-le v1, v4, :cond_0

    .line 430
    goto :goto_2

    .line 432
    :cond_0
    const-string v4, "ContactId ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    RawId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getRawId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "    Name: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getContactNumberList()Ljava/util/ArrayList;

    move-result-object v5

    .line 436
    .local v5, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 437
    .local v7, "cn":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    const-string v8, "    Number: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "    E164: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    .end local v7    # "cn":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    goto :goto_1

    .line 439
    .end local v3    # "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    .end local v5    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;>;"
    :cond_1
    goto :goto_0

    .line 440
    :cond_2
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private getAllCachedNumber()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 223
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilities()Ljava/util/Collection;

    move-result-object v2

    .line 224
    .local v2, "capexList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/options/Capabilities;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/options/Capabilities;

    .line 225
    .local v4, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 226
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v4    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_0
    goto :goto_1

    .line 222
    .end local v2    # "capexList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/options/Capabilities;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private getAllNumbersInContactDB()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 579
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "data1"

    const-string v3, "data4"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "projection":[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 586
    .local v8, "remoteUri":Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 587
    .local v2, "cur":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 588
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getAllNumbersInContactDB: no contact found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    nop

    .line 621
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 589
    :cond_0
    return-object v9

    .line 591
    :cond_1
    :try_start_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllNumbersInContactDB: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " contacts."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v3, 0x0

    .line 595
    .local v3, "count":I
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 596
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 597
    add-int/lit8 v3, v3, 0x1

    rem-int/lit16 v5, v3, 0x12c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_2

    .line 601
    const-wide/16 v5, 0x12c

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 603
    goto :goto_1

    .line 602
    :catch_0
    move-exception v5

    .line 606
    :cond_2
    :goto_1
    const/4 v5, 0x0

    :try_start_5
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 607
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, "e164number":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 610
    if-nez v5, :cond_3

    .line 611
    goto :goto_0

    .line 614
    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 615
    if-eqz v6, :cond_4

    .line 616
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 618
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "e164number":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 620
    :cond_5
    nop

    .line 621
    if-eqz v2, :cond_6

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 620
    :cond_6
    return-object v0

    .line 586
    .end local v3    # "count":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_7

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "remoteUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :cond_7
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 621
    .end local v2    # "cur":Landroid/database/Cursor;
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v8    # "remoteUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :catch_1
    move-exception v2

    .line 622
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllNumbersInContactDB: Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v9
.end method

.method private getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 422
    return-object p1
.end method

.method private isAllowedContactSync()Z
    .locals 3

    .line 646
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 648
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    return v1

    .line 647
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 653
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    return v1

    .line 657
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAllowedContactSync(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v0

    .line 666
    .local v0, "isRcsEnabled":Z
    const-string/jumbo v1, "rcs_contact_sync_in_switch_off"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 668
    .local v1, "isContactSyncInSwitchOff":Z
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    .line 671
    .local v3, "rcsSwitch":Z
    :goto_0
    if-nez v0, :cond_1

    .line 672
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isAllowedContactSync: rcs is off in customer."

    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    return v4

    .line 674
    :cond_1
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    .line 675
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isAllowedContactSync: CONTACT_SYNC_IN_SWITCH_OFF is false."

    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 676
    return v4

    .line 679
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isAllowedContactSync: contact sync is allowed"

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 680
    return v2
.end method

.method private isAllowedInitialContactSyncBeforeRegi(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 661
    const-string/jumbo v0, "rcs_initial_contact_sync_before_regi"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 272
    const-string v0, "[- ()]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 278
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-nez v0, :cond_1

    .line 279
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "normalize: invalid number."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object p1

    .line 282
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onStartContactSync()V
    .locals 3

    .line 746
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartContactSync : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 749
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->startContactSync()V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 752
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartContactSync : Sync In Progress. Sync will start later, mIsThrottle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_0
    return-void
.end method

.method private processChangeDuringLimiting()V
    .locals 21

    .line 472
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "processChangeDuringLimiting: Start."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v2, 0x0

    .line 475
    .local v2, "isRefreshed":Z
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 482
    .local v9, "cr":Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setProjection()[Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, "projection":[Ljava/lang/String;
    const-string v11, "contact_last_updated_timestamp > ?"

    .line 484
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    iget-wide v3, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v7, v12

    .line 485
    .local v7, "bindArgs":[Ljava/lang/String;
    const-string/jumbo v13, "raw_contact_id"

    .line 487
    .local v13, "order":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 489
    .local v14, "remoteUri":Landroid/net/Uri;
    move-object v3, v9

    move-object v4, v14

    move-object v5, v10

    move-object v6, v11

    move-object v8, v13

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 490
    .local v3, "cur":Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 491
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "processChangeDuringLimiting: no contact found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v7

    goto/16 :goto_8

    .line 493
    :cond_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 494
    .local v4, "curSize":I
    if-nez v4, :cond_1

    .line 495
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "processChangeDuringLimiting: found 0, removed"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 545
    .end local v4    # "curSize":I
    :goto_0
    move-object/from16 v18, v7

    goto/16 :goto_7

    .line 498
    .restart local v4    # "curSize":I
    :cond_1
    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processChangeDuringLimiting: found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v5, "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 501
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, "rawId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-le v8, v15, :cond_2

    .line 504
    :try_start_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processChangeDuringLimiting: rawId > mLastRawId, rawId = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mLastRawId = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 505
    move/from16 v16, v4

    move-object/from16 v18, v7

    goto/16 :goto_5

    .line 509
    :cond_2
    const/4 v2, 0x1

    .line 510
    :try_start_6
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "id":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 512
    .local v15, "name":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "number":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 515
    .local v12, "e164number":Ljava/lang/String;
    invoke-direct {v1, v0, v12}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    .line 516
    if-nez v0, :cond_3

    .line 517
    move/from16 v17, v2

    move/from16 v16, v4

    move-object/from16 v18, v7

    goto :goto_4

    .line 520
    :cond_3
    invoke-direct {v1, v0, v12}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    .line 522
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/internal/ims/servicemodules/options/Contact;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 523
    .local v16, "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    if-nez v16, :cond_4

    .line 524
    move/from16 v17, v2

    .end local v2    # "isRefreshed":Z
    .local v17, "isRefreshed":Z
    :try_start_7
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/Contact;

    invoke-direct {v2, v8, v6}, Lcom/sec/internal/ims/servicemodules/options/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v16, v2

    goto :goto_2

    .line 489
    .end local v0    # "number":Ljava/lang/String;
    .end local v4    # "curSize":I
    .end local v5    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .end local v6    # "rawId":Ljava/lang/String;
    .end local v8    # "id":Ljava/lang/String;
    .end local v12    # "e164number":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v18, v7

    move/from16 v2, v17

    goto/16 :goto_8

    .line 523
    .end local v17    # "isRefreshed":Z
    .restart local v0    # "number":Ljava/lang/String;
    .restart local v2    # "isRefreshed":Z
    .restart local v4    # "curSize":I
    .restart local v5    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .restart local v6    # "rawId":Ljava/lang/String;
    .restart local v8    # "id":Ljava/lang/String;
    .restart local v12    # "e164number":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    :cond_4
    move/from16 v17, v2

    .end local v2    # "isRefreshed":Z
    .restart local v17    # "isRefreshed":Z
    move-object/from16 v2, v16

    .line 526
    .end local v16    # "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    .local v2, "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    :goto_2
    :try_start_8
    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setId(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setName(Ljava/lang/String;)V

    .line 529
    move/from16 v16, v4

    .end local v4    # "curSize":I
    .local v16, "curSize":I
    new-instance v4, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 530
    if-nez v12, :cond_5

    const/16 v18, 0x0

    move-object/from16 v19, v8

    move-object/from16 v20, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v20

    goto :goto_3

    :cond_5
    move-object/from16 v18, v7

    .end local v7    # "bindArgs":[Ljava/lang/String;
    .local v18, "bindArgs":[Ljava/lang/String;
    :try_start_9
    const-string v7, "[- ()]"

    move-object/from16 v19, v8

    .end local v8    # "id":Ljava/lang/String;
    .local v19, "id":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-direct {v4, v0, v7}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v4, "contactNumber":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/options/Contact;->insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V

    .line 533
    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 534
    nop

    .line 500
    .end local v0    # "number":Ljava/lang/String;
    .end local v6    # "rawId":Ljava/lang/String;
    .end local v12    # "e164number":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "curSize":I
    .end local v17    # "isRefreshed":Z
    .end local v18    # "bindArgs":[Ljava/lang/String;
    .end local v19    # "id":Ljava/lang/String;
    .local v2, "isRefreshed":Z
    .local v4, "curSize":I
    .restart local v7    # "bindArgs":[Ljava/lang/String;
    :goto_4
    move/from16 v4, v16

    move/from16 v2, v17

    move-object/from16 v7, v18

    const/4 v0, 0x1

    const/4 v12, 0x0

    .end local v2    # "isRefreshed":Z
    .end local v4    # "curSize":I
    .end local v7    # "bindArgs":[Ljava/lang/String;
    .restart local v16    # "curSize":I
    .restart local v17    # "isRefreshed":Z
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 489
    .end local v5    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .end local v16    # "curSize":I
    :catchall_2
    move-exception v0

    move-object v4, v0

    move/from16 v2, v17

    goto :goto_8

    .end local v18    # "bindArgs":[Ljava/lang/String;
    .restart local v7    # "bindArgs":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v7

    move-object v4, v0

    move/from16 v2, v17

    .end local v7    # "bindArgs":[Ljava/lang/String;
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    goto :goto_8

    .end local v17    # "isRefreshed":Z
    .end local v18    # "bindArgs":[Ljava/lang/String;
    .restart local v2    # "isRefreshed":Z
    .restart local v7    # "bindArgs":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v18, v7

    move-object v4, v0

    .end local v2    # "isRefreshed":Z
    .end local v7    # "bindArgs":[Ljava/lang/String;
    .restart local v17    # "isRefreshed":Z
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    goto :goto_8

    .line 500
    .end local v17    # "isRefreshed":Z
    .end local v18    # "bindArgs":[Ljava/lang/String;
    .restart local v2    # "isRefreshed":Z
    .restart local v4    # "curSize":I
    .restart local v5    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .restart local v7    # "bindArgs":[Ljava/lang/String;
    :cond_6
    move/from16 v16, v4

    move-object/from16 v18, v7

    .line 536
    .end local v4    # "curSize":I
    .end local v7    # "bindArgs":[Ljava/lang/String;
    .restart local v16    # "curSize":I
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    :goto_5
    if-eqz v2, :cond_7

    .line 537
    :try_start_a
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 538
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "processChangeDuringLimiting: Done. contact updated."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 540
    .local v4, "listener":Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;->onChanged()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 541
    .end local v4    # "listener":Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;
    goto :goto_6

    .line 489
    .end local v5    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .end local v16    # "curSize":I
    :catchall_5
    move-exception v0

    move-object v4, v0

    goto :goto_8

    .line 545
    :cond_7
    :goto_7
    if-eqz v3, :cond_8

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 547
    .end local v3    # "cur":Landroid/database/Cursor;
    :cond_8
    goto :goto_b

    .line 489
    .end local v18    # "bindArgs":[Ljava/lang/String;
    .restart local v3    # "cur":Landroid/database/Cursor;
    .restart local v7    # "bindArgs":[Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v7

    move-object v4, v0

    .end local v7    # "bindArgs":[Ljava/lang/String;
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    :goto_8
    if-eqz v3, :cond_9

    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "isRefreshed":Z
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local v11    # "selection":Ljava/lang/String;
    .end local v13    # "order":Ljava/lang/String;
    .end local v14    # "remoteUri":Landroid/net/Uri;
    .end local v18    # "bindArgs":[Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :cond_9
    :goto_9
    throw v4
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 545
    .end local v3    # "cur":Landroid/database/Cursor;
    .restart local v2    # "isRefreshed":Z
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local v11    # "selection":Ljava/lang/String;
    .restart local v13    # "order":Ljava/lang/String;
    .restart local v14    # "remoteUri":Landroid/net/Uri;
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :catch_0
    move-exception v0

    goto :goto_a

    .end local v18    # "bindArgs":[Ljava/lang/String;
    .restart local v7    # "bindArgs":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v18, v7

    .line 546
    .end local v7    # "bindArgs":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "bindArgs":[Ljava/lang/String;
    :goto_a
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processChangeDuringLimiting: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_b
    return-void
.end method

.method private processRemovedContact()Z
    .locals 6

    .line 551
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processRemovedContact: Start."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAllCachedNumber()Ljava/util/Map;

    move-result-object v0

    .line 556
    .local v0, "cachedNumbersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAllNumbersInContactDB()Ljava/util/List;

    move-result-object v2

    .line 562
    .local v2, "allNumbersInContactDB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 565
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "processRemovedContact: start remove"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 567
    .local v4, "number":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .end local v4    # "number":Ljava/lang/String;
    goto :goto_0

    .line 563
    :cond_2
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "processRemovedContact: No numbers in Contact DB"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processRemovedContact: Done. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " numbers removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 573
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 557
    .end local v2    # "allNumbersInContactDB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "processRemovedContact: No cached numbers. return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v1
.end method

.method private refresh()Z
    .locals 21

    .line 300
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 301
    .local v2, "isRefreshed":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 303
    .local v3, "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh: cc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 312
    .local v10, "cr":Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setProjection()[Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, "projection":[Ljava/lang/String;
    const-string v12, "contact_last_updated_timestamp > ?"

    .line 314
    .local v12, "selection":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz v0, :cond_0

    .line 315
    iget-wide v4, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:J

    goto :goto_0

    :cond_0
    iget-wide v4, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    aput-object v0, v8, v14

    .line 316
    .local v8, "bindArgs":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "raw_contact_id LIMIT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 318
    .local v15, "order":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 319
    .local v16, "remoteUri":Landroid/net/Uri;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh: mStartIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": refresh: mStartIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 321
    const/high16 v0, 0x12060000

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "N,REFR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 323
    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v11

    move-object v7, v12

    move-object v9, v15

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v4, v0

    .line 324
    .local v4, "cur":Landroid/database/Cursor;
    if-nez v4, :cond_2

    .line 325
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "refresh: no contact found"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    nop

    .line 413
    if-eqz v4, :cond_1

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v4    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object/from16 v19, v8

    goto/16 :goto_a

    .line 326
    .restart local v4    # "cur":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v14

    .line 323
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object/from16 v19, v8

    goto/16 :goto_8

    .line 328
    :cond_2
    :try_start_3
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v0, :cond_3

    .line 329
    :try_start_4
    iget-wide v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    iput-wide v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:J

    .line 330
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh: set mPrevRefreshTimeInMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    :cond_3
    :try_start_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    .line 333
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    .line 334
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " contacts. mLastRefreshTimeInMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": refresh: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " contacts."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 337
    const v0, 0x12060001

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "N,REFR:FOUND:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "count":I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-lez v5, :cond_d

    .line 342
    const/4 v2, 0x1

    .line 343
    :goto_2
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 344
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "count":I
    .local v5, "count":I
    rem-int/lit16 v0, v5, 0x12c
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v0, :cond_4

    .line 348
    const-wide/16 v6, 0x12c

    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 350
    goto :goto_3

    .line 349
    :catch_1
    move-exception v0

    .line 354
    :cond_4
    :goto_3
    :try_start_8
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "id":Ljava/lang/String;
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "rawId":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "name":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, "number":Ljava/lang/String;
    const/4 v14, 0x4

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 362
    .local v14, "e164number":Ljava/lang/String;
    nop

    .line 364
    :try_start_9
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    if-eqz v13, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v18, v2

    .end local v2    # "isRefreshed":Z
    .local v18, "isRefreshed":Z
    :try_start_a
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v13, v2, :cond_5

    .line 366
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v19, v8

    .end local v8    # "bindArgs":[Ljava/lang/String;
    .local v19, "bindArgs":[Ljava/lang/String;
    :try_start_b
    const-string/jumbo v8, "refresh: ContactUpdated, rawId ="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    goto :goto_4

    .line 364
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v8

    const/4 v2, 0x1

    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    goto :goto_4

    .line 323
    .end local v0    # "id":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "rawId":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v14    # "e164number":Ljava/lang/String;
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v8

    move-object v5, v0

    move/from16 v2, v18

    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    goto/16 :goto_8

    .line 364
    .end local v18    # "isRefreshed":Z
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v2    # "isRefreshed":Z
    .restart local v5    # "count":I
    .restart local v6    # "rawId":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    .restart local v14    # "e164number":Ljava/lang/String;
    :cond_6
    move/from16 v18, v2

    move-object/from16 v19, v8

    const/4 v2, 0x1

    .line 370
    .end local v2    # "isRefreshed":Z
    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v18    # "isRefreshed":Z
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    :goto_4
    iget v8, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    if-ne v5, v8, :cond_7

    .line 371
    iput-object v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    .line 374
    :cond_7
    invoke-direct {v1, v9, v14}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .end local v9    # "number":Ljava/lang/String;
    .local v8, "number":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 376
    goto :goto_6

    .line 379
    :cond_8
    invoke-direct {v1, v8, v14}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .end local v14    # "e164number":Ljava/lang/String;
    .local v9, "e164number":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/ims/servicemodules/options/Contact;

    .line 387
    .local v13, "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    if-nez v13, :cond_9

    .line 388
    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/internal/ims/servicemodules/options/Contact;

    move-object v13, v14

    .line 392
    :cond_9
    if-nez v13, :cond_a

    .line 393
    new-instance v14, Lcom/sec/internal/ims/servicemodules/options/Contact;

    invoke-direct {v14, v0, v6}, Lcom/sec/internal/ims/servicemodules/options/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v14

    .line 396
    :cond_a
    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setId(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v13, v7}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setName(Ljava/lang/String;)V

    .line 399
    new-instance v14, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 400
    if-nez v9, :cond_b

    const/16 v17, 0x0

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    goto :goto_5

    :cond_b
    const-string v2, "[- ()]"

    move-object/from16 v20, v0

    .end local v0    # "id":Ljava/lang/String;
    .local v20, "id":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v14, v8, v0}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    .line 402
    .local v0, "contactNumber":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/servicemodules/options/Contact;->insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V

    .line 403
    invoke-interface {v3, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    nop

    .end local v0    # "contactNumber":Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
    .end local v13    # "contact":Lcom/sec/internal/ims/servicemodules/options/Contact;
    goto :goto_6

    .line 359
    .end local v6    # "rawId":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "e164number":Ljava/lang/String;
    .end local v18    # "isRefreshed":Z
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .end local v20    # "id":Ljava/lang/String;
    .restart local v2    # "isRefreshed":Z
    .local v8, "bindArgs":[Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v19, v8

    .line 360
    .end local v2    # "isRefreshed":Z
    .end local v8    # "bindArgs":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "isRefreshed":Z
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Exception in cur.getString"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    nop

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    move v0, v5

    move/from16 v2, v18

    move-object/from16 v8, v19

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 405
    .end local v5    # "count":I
    .end local v18    # "isRefreshed":Z
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .local v0, "count":I
    .restart local v2    # "isRefreshed":Z
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :cond_c
    move/from16 v18, v2

    move-object/from16 v19, v8

    .end local v2    # "isRefreshed":Z
    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v18    # "isRefreshed":Z
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "refresh: mLastRawId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v2, v18

    goto :goto_7

    .line 323
    .end local v0    # "count":I
    :catchall_2
    move-exception v0

    move-object v5, v0

    move/from16 v2, v18

    goto :goto_8

    .end local v18    # "isRefreshed":Z
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v2    # "isRefreshed":Z
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v19, v8

    move-object v5, v0

    .end local v2    # "isRefreshed":Z
    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v18    # "isRefreshed":Z
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    goto :goto_8

    .line 341
    .end local v18    # "isRefreshed":Z
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v0    # "count":I
    .restart local v2    # "isRefreshed":Z
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v8

    .line 408
    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    :goto_7
    :try_start_c
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 409
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->dumpContactList()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 412
    nop

    .line 413
    if-eqz v4, :cond_e

    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .line 412
    :cond_e
    return v2

    .line 323
    .end local v0    # "count":I
    :catchall_4
    move-exception v0

    move-object v5, v0

    goto :goto_8

    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v19, v8

    move-object v5, v0

    .end local v8    # "bindArgs":[Ljava/lang/String;
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    :goto_8
    if-eqz v4, :cond_f

    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_f
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "isRefreshed":Z
    .end local v3    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "projection":[Ljava/lang/String;
    .end local v12    # "selection":Ljava/lang/String;
    .end local v15    # "order":Ljava/lang/String;
    .end local v16    # "remoteUri":Landroid/net/Uri;
    .end local v19    # "bindArgs":[Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :cond_f
    :goto_9
    throw v5
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    .line 413
    .end local v4    # "cur":Landroid/database/Cursor;
    .restart local v2    # "isRefreshed":Z
    .restart local v3    # "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v11    # "projection":[Ljava/lang/String;
    .restart local v12    # "selection":Ljava/lang/String;
    .restart local v15    # "order":Ljava/lang/String;
    .restart local v16    # "remoteUri":Landroid/net/Uri;
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :catch_3
    move-exception v0

    goto :goto_a

    .end local v19    # "bindArgs":[Ljava/lang/String;
    .restart local v8    # "bindArgs":[Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v19, v8

    .line 414
    .end local v8    # "bindArgs":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v19    # "bindArgs":[Ljava/lang/String;
    :goto_a
    sget-object v4, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh: Can not refresh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const v4, 0x12060002

    const-string v5, "N,REFR:ER"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 416
    const/4 v4, 0x0

    return v4
.end method

.method private setProjection()[Ljava/lang/String;
    .locals 5

    .line 286
    const-string v0, "contact_id"

    const-string/jumbo v1, "raw_contact_id"

    const-string v2, "display_name"

    const-string v3, "data1"

    const-string v4, "data4"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startContactSync()V
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->startContactSync(Lcom/sec/internal/constants/Mno;)V

    .line 814
    return-void
.end method

.method private startContactSync(Lcom/sec/internal/constants/Mno;)V
    .locals 3
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 757
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startContactSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 759
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 760
    return-void

    .line 762
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$yYw8vbJtlYMs4rzXUuEOKxoqRRI;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$yYw8vbJtlYMs4rzXUuEOKxoqRRI;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 860
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 863
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public getAndFlushRemovedNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 238
    return-object v0
.end method

.method public getBlockedInitialContactSyncBeforeRegi()Z
    .locals 1

    .line 692
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    return v0
.end method

.method public getContactProviderStatus()I
    .locals 9

    .line 832
    const/4 v0, -0x1

    .line 833
    .local v0, "providerStatus":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 836
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "provider_status"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 837
    .local v8, "remoteUri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v2, "status"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .local v2, "cur":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 839
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto :goto_1

    .line 837
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "providerStatus":I
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "remoteUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :cond_0
    :goto_0
    throw v3

    .line 843
    .restart local v0    # "providerStatus":I
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "remoteUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 845
    .end local v2    # "cur":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 843
    :catch_0
    move-exception v2

    .line 844
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContactProviderStatus: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactProviderStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return v0
.end method

.method public getContacts()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/Contact;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 215
    .local v0, "contacts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/options/Contact;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 216
    return-object v0
.end method

.method public getIsBlockedContactChange()Z
    .locals 1

    .line 684
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    return v0
.end method

.method public getLastRefreshTime()J
    .locals 4

    .line 165
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastRefreshTime: mLastRefreshTimeInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    return-wide v0
.end method

.method public getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 172
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "data1"

    const-string v3, "data4"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "projection":[Ljava/lang/String;
    const-string v8, "contact_id = ?"

    .line 179
    .local v8, "selection":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v6, v10

    .line 181
    .local v6, "bindArgs":[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 182
    .local v11, "remoteUri":Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v2, v1

    move-object v3, v11

    move-object v5, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .local v2, "cur":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 184
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getNumberlistByContactId: no contact found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    nop

    .line 207
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :cond_0
    return-object v12

    .line 187
    :cond_1
    :try_start_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumberlistByContactId: found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " contacts."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 191
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "number":Ljava/lang/String;
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "e164number":Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 196
    if-nez v3, :cond_2

    .line 197
    goto :goto_0

    .line 200
    :cond_2
    invoke-direct {p0, v3, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 201
    if-eqz v5, :cond_3

    .line 202
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "e164number":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 206
    :cond_4
    nop

    .line 207
    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 206
    :cond_5
    return-object v0

    .line 182
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "bindArgs":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v11    # "remoteUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    .end local p1    # "contactId":Ljava/lang/String;
    :cond_6
    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 207
    .end local v2    # "cur":Landroid/database/Cursor;
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v6    # "bindArgs":[Ljava/lang/String;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v11    # "remoteUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    .restart local p1    # "contactId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumberlistByContactId: Exception "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v12
.end method

.method public isReady()Z
    .locals 4

    .line 156
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setThrottleContactSync$0$ContactCache(Z)V
    .locals 3
    .param p1, "isThrottle"    # Z

    .line 452
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThrottleContactSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-eq v0, p1, :cond_3

    .line 454
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 455
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz v0, :cond_3

    .line 456
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processChangeDuringLimiting()V

    .line 460
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 461
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThrottleContactSync : Limiting, mStartIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setThrottleContactSync : try to resync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 468
    :cond_3
    return-void
.end method

.method public synthetic lambda$startContactSync$1$ContactCache()V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 765
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: operator is unknown. bail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 767
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    .line 772
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: start caching contacts."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->refresh()Z

    move-result v0

    .line 776
    .local v0, "isRefreshed":Z
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    .line 777
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 778
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(Z)V

    goto :goto_0

    .line 780
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 781
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 784
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 786
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 787
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 788
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_1

    .line 792
    :cond_3
    if-nez v0, :cond_4

    .line 793
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: removed, check removed contacts."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    move-result v0

    goto :goto_1

    .line 795
    :cond_4
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    if-eqz v2, :cond_5

    .line 796
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 797
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    .line 801
    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 802
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: Done. contact updated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 804
    .local v2, "listener":Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;->onChanged()V

    .line 805
    .end local v2    # "listener":Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;
    goto :goto_2

    :cond_6
    goto :goto_3

    .line 807
    :cond_7
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: Done. contact no found."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_3
    return-void
.end method

.method public registerListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public resetRefreshTime()V
    .locals 2

    .line 827
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    .line 828
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:J

    .line 829
    return-void
.end method

.method public sendMessageContactSync()V
    .locals 7

    .line 696
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 697
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageContactSync: block the contact sync."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    goto :goto_0

    .line 700
    :cond_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 702
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedInitialContactSyncBeforeRegi(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 703
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageContactSync: block the initial contact sync before regi."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    goto :goto_1

    .line 706
    :cond_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 708
    :goto_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 712
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMessageContactSync: Try contact sync after 3 sec."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->removeMessages(I)V

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 716
    return-void

    .line 709
    :cond_3
    :goto_2
    return-void
.end method

.method public setIsBlockedContactChange(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 688
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 689
    return-void
.end method

.method public setLastRefreshTime(J)V
    .locals 3
    .param p1, "time"    # J

    .line 160
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastRefreshTime: mLastRefreshTimeInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    .line 162
    return-void
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)V
    .locals 3
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 817
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMno: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    .line 822
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMno: mCountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    return-void
.end method

.method public setThrottleContactSync(Z)V
    .locals 2
    .param p1, "isThrottle"    # Z

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$ContactCache$sFqpKZAk4V8ElHrynqGLwsC8ZYM;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method

.method public setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0
    .param p1, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;

    .line 444
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 445
    return-void
.end method

.method public start()V
    .locals 6

    .line 121
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 123
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 124
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 127
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    if-nez v2, :cond_0

    .line 128
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 129
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start: Contact observer for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    invoke-static {v2, v3, v0, v4, v5}, Lcom/sec/ims/extensions/Extensions$ContentResolver;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 138
    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:J

    .line 150
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:J

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 152
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 153
    return-void
.end method

.method public unregisterListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method
