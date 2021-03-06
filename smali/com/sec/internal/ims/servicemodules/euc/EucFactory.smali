.class Lcom/sec/internal/ims/servicemodules/euc/EucFactory;
.super Ljava/lang/Object;
.source "EucFactory.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 7
    .param p1, "data"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;
    .param p2, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p3, "language"    # Ljava/lang/String;

    .line 264
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v0

    return-object v0
.end method

.method private createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 7
    .param p1, "data"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;
    .param p2, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p3, "language"    # Ljava/lang/String;

    .line 258
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;->getText()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;->getOkButton()Ljava/lang/String;

    move-result-object v5

    .line 258
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v0

    return-object v0
.end method

.method private createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 7
    .param p1, "data"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;
    .param p2, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p3, "language"    # Ljava/lang/String;

    .line 252
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;->getText()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;->getAcceptButton()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;->getRejectButton()Ljava/lang/String;

    move-result-object v6

    .line 252
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v0

    return-object v0
.end method

.method private createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;ZZLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 9
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "isPinRequested"    # Z
    .param p4, "isExternal"    # Z
    .param p5, "timeout"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc<",
            "TT;>;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "ZZ",
            "Ljava/lang/Long;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;"
        }
    .end annotation

    .line 142
    .local p1, "euc":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;, "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc<TT;>;"
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 143
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getEucId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getFromHeader()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-direct {v1, v0, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 144
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;->getTimestamp()J

    move-result-wide v6

    .line 142
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    move v4, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZLjava/lang/String;ZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;"
        }
    .end annotation

    .line 45
    .local p1, "eucDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    .local p2, "dialogDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "keyMapping":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 48
    .local v2, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;-><init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 49
    .local v3, "query":Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v2    # "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .end local v3    # "query":Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    .line 53
    .local v2, "dialogData":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 57
    .local v3, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    const-string v4, "Database Integrity Error"

    invoke-static {v3, v4}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 60
    .end local v2    # "dialogData":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .end local v3    # "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 9
    .param p1, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "acceptButton"    # Ljava/lang/String;
    .param p6, "rejectButton"    # Ljava/lang/String;

    .line 217
    new-instance v8, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/EucFactory;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .locals 7
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    .line 117
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;ZZLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 119
    .local v0, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;-><init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 122
    .local v1, "handle":Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;->getLanguageMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 123
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v5

    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 123
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v4

    .line 125
    .local v4, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 126
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;>;"
    .end local v4    # "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 132
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    const-string v4, "def"

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v2

    .line 134
    .local v2, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 137
    .end local v2    # "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    :cond_1
    return-object v1
.end method

.method public createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .locals 7
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    .line 95
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;ZZLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 97
    .local v0, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;-><init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 100
    .local v1, "handle":Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;->getLanguageMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 101
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v5

    .line 102
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 101
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v4

    .line 103
    .local v4, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 104
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;>;"
    .end local v4    # "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;->getDefaultData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    const-string v4, "def"

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v2

    .line 110
    .local v2, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 112
    return-object v1
.end method

.method public createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .locals 9
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    .line 67
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-object v3, v0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-object v3, v0

    :goto_0
    nop

    .line 70
    .local v3, "type":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getTimeOut()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getTimeOut()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v6, v0

    :goto_1
    nop

    .line 72
    .local v6, "timeout":Ljava/lang/Long;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->isPinRequested()Z

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->isExternal()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;ZZLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 75
    .local v0, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;-><init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 78
    .local v1, "handle":Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getLanguageMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 79
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v7

    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 79
    invoke-direct {p0, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v5

    .line 81
    .local v5, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 82
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;>;"
    .end local v5    # "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    goto :goto_2

    .line 86
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;->getDefaultData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    const-string v5, "def"

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v2

    .line 88
    .local v2, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V

    .line 90
    return-object v1
.end method

.method public createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZLjava/lang/String;ZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 11
    .param p1, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p2, "isPinRequested"    # Z
    .param p3, "userPin"    # Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p6, "timestamp"    # J
    .param p8, "timeout"    # Ljava/lang/Long;

    .line 153
    new-instance v10, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/EucFactory;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;Ljava/lang/String;)V

    return-object v10
.end method
