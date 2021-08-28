.class public final Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;
.super Ljava/lang/Object;
.source "XmlDataStructureWrapper.java"


# static fields
.field private static final CAP_AVAILABLE:Ljava/lang/String; = "true"

.field private static final CAP_SUPPORTED:Ljava/lang/String; = "supported"

.field private static final CAP_UNAVAILABLE:Ljava/lang/String; = "false"

.field private static final DEVICE_CAP_MOBILITY:Ljava/lang/String; = "mobility"

.field private static final LANGUAGE:Ljava/lang/String; = "lang"

.field private static final LOG_TAG:Ljava/lang/String; = "XDM-WRAPPER"

.field private static final MEDIA_CAP_AUDIO:Ljava/lang/String; = "audio"

.field private static final MEDIA_CAP_DUPLEX:Ljava/lang/String; = "duplex"

.field private static final MEDIA_CAP_FULL_DUPLEX:Ljava/lang/String; = "full"

.field private static final MEDIA_CAP_VIDEO:Ljava/lang/String; = "video"

.field private static final XML_NS:Ljava/lang/String; = "xml"

.field private static mMediaCapabilities:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 70
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    .line 73
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    const/4 v3, 0x3

    new-array v4, v3, [Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v6, "audio"

    const-string/jumbo v7, "true"

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v5, v4, v8

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v9, "video"

    const-string v10, "false"

    invoke-direct {v5, v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    aput-object v5, v4, v11

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v12, "full"

    invoke-direct {v5, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v14, "supported"

    invoke-direct {v13, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5, v13}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v13, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v15, "duplex"

    invoke-direct {v13, v15}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v4, v13

    .line 73
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    new-array v4, v3, [Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v9, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v11

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v11, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v11, v15}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    aput-object v5, v4, v13

    .line 77
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    new-array v4, v3, [Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v5, v4, v10

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v10, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v10}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v10, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v10, v15}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    aput-object v5, v4, v13

    .line 81
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    new-array v4, v3, [Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v9, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    aput-object v5, v4, v10

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v10, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, v10}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v10, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v10, v15}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    aput-object v5, v4, v13

    .line 85
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    new-array v3, v3, [Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v9, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v14}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v15}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    aput-object v4, v3, v13

    .line 89
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getDeviceCapabilityElements(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation

    .line 98
    .local p0, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "deviceCapabilities":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/XmlElement;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "cap":Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v5, "supported"

    invoke-direct {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v5, "mobility"

    invoke-direct {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "cap":Ljava/lang/String;
    goto :goto_0

    .line 103
    :cond_0
    return-object v0
.end method

.method public static getMediaCapabilityElements(J)Ljava/util/List;
    .locals 3
    .param p0, "feature"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    long-to-int v1, p0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    long-to-int v1, p0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public static getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation

    .line 55
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "textElements":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/XmlElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 57
    .local v2, "txt":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 58
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "lang"

    const-string/jumbo v6, "xml"

    invoke-virtual {v3, v5, v4, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_0
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2    # "txt":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 63
    :cond_1
    return-object v0
.end method
