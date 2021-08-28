.class public Lcom/sec/internal/helper/translate/MappingTranslator;
.super Ljava/lang/Object;
.source "MappingTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;,
        Lcom/sec/internal/helper/translate/MappingTranslator$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranslatedType:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TTranslatedType;TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TTranslatedType;TResultType;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/sec/internal/helper/translate/MappingTranslator;, "Lcom/sec/internal/helper/translate/MappingTranslator<TTranslatedType;TResultType;>;"
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<TTranslatedType;TResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/sec/internal/helper/translate/MappingTranslator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/sec/internal/helper/translate/MappingTranslator$1;

    .line 52
    .local p0, "this":Lcom/sec/internal/helper/translate/MappingTranslator;, "Lcom/sec/internal/helper/translate/MappingTranslator<TTranslatedType;TResultType;>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/MappingTranslator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public isTranslationDefined(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTranslatedType;)Z"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/sec/internal/helper/translate/MappingTranslator;, "Lcom/sec/internal/helper/translate/MappingTranslator<TTranslatedType;TResultType;>;"
    .local p1, "value":Ljava/lang/Object;, "TTranslatedType;"
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTranslatedType;)TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/sec/internal/helper/translate/MappingTranslator;, "Lcom/sec/internal/helper/translate/MappingTranslator<TTranslatedType;TResultType;>;"
    .local p1, "value":Ljava/lang/Object;, "TTranslatedType;"
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
