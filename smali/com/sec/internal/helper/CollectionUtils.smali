.class public Lcom/sec/internal/helper/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/CollectionUtils$Partition;,
        Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArrayListMultimap()Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-direct {v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;-><init>()V

    return-object v0
.end method

.method public static getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .line 36
    if-nez p0, :cond_0

    .line 37
    return p2

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .line 43
    .end local v0    # "result":Ljava/lang/Boolean;
    :cond_2
    return p2
.end method

.method public static getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .line 48
    if-nez p0, :cond_0

    .line 49
    return p2

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .line 55
    .end local v0    # "result":Ljava/lang/Integer;
    :cond_2
    return p2
.end method

.method public static getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 60
    if-nez p0, :cond_0

    .line 61
    return-object p2

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 67
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    return-object p2
.end method

.method public static isNullOrEmpty(Landroid/content/ContentValues;)Z
    .locals 1
    .param p0, "cv"    # Landroid/content/ContentValues;

    .line 32
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

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

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 20
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isNullOrEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 24
    .local p0, "collection":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # [Ljava/lang/Object;

    .line 28
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

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

.method public static partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Lcom/sec/internal/helper/CollectionUtils$Partition<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/sec/internal/helper/CollectionUtils$Partition;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/helper/CollectionUtils$Partition;-><init>(Ljava/util/List;I)V

    return-object v0
.end method
