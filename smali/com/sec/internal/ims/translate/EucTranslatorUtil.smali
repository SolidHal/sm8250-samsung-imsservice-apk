.class public Lcom/sec/internal/ims/translate/EucTranslatorUtil;
.super Ljava/lang/Object;
.source "EucTranslatorUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/translate/EucTranslatorUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .param p0, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Language is empty, using default!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "def"

    return-object v0

    .line 100
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0
.end method

.method static checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "isLangOptional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 73
    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v1, "RCC.15: A language (lang) attribute must be present with the two letter language codes according to the ISO 639-1"

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 83
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 86
    return-void

    .line 84
    :cond_2
    new-instance v0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string v1, "null text is not allowed"

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getOwnIdentity(I)Ljava/lang/String;
    .locals 3
    .param p0, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "ownIdentity":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 48
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgentHandle(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 51
    .end local v1    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    return-object v0

    .line 54
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Cannot obtain own identity!"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/sec/internal/helper/translate/TranslationException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 115
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value for language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is empty, getting first in values!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 125
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
