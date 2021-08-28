.class Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;
.super Ljava/lang/Object;
.source "EucMessageTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/translate/EucMessageTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EucMessageDataCollector"
.end annotation


# instance fields
.field private mAcceptButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

.field private final mElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/translate/EucMessageTranslator;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->this$0:Lcom/sec/internal/ims/translate/EucMessageTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    .line 155
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    .line 156
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    .line 157
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mAcceptButtons:Ljava/util/Map;

    .line 158
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mRejectButtons:Ljava/util/Map;

    .line 160
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    .line 161
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;Lcom/sec/internal/ims/translate/EucMessageTranslator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/translate/EucMessageTranslator;
    .param p2, "x1"    # Lcom/sec/internal/ims/translate/EucMessageTranslator$1;

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;)V

    return-void
.end method

.method private add(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "element"    # Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    if-nez v0, :cond_0

    .line 219
    iput-object p2, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    .line 221
    :cond_0
    return-void
.end method

.method private createEucMessageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "acceptButton"    # Ljava/lang/String;
    .param p4, "rejectButton"    # Ljava/lang/String;

    .line 226
    new-instance v6, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;-><init>(Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private releaseTemporaryData()V
    .locals 1

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    .line 209
    iput-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    .line 210
    iput-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    .line 211
    iput-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mAcceptButtons:Ljava/util/Map;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mRejectButtons:Ljava/util/Map;

    .line 213
    return-void
.end method


# virtual methods
.method addAcceptButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mAcceptButtons:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method addRejectButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mRejectButtons:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method addSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method getAllElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    return-object v0
.end method

.method getDefaultElement()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    return-object v0
.end method

.method prepareMessageData()V
    .locals 7

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "language":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "subject":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mAcceptButtons:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "acceptButton":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->mRejectButtons:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "rejectButton":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->createEucMessageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->add(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;)V

    .line 202
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v4    # "acceptButton":Ljava/lang/String;
    .end local v5    # "rejectButton":Ljava/lang/String;
    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->releaseTemporaryData()V

    .line 205
    return-void
.end method
