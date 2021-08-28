.class public Lcom/sec/internal/omanetapi/nms/IndividualFolder;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "IndividualFolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAttrFilter:Ljava/lang/String;

.field private final mFolderId:Ljava/lang/String;

.field private final mFromCursor:Ljava/lang/String;

.field private final mListFilter:Ljava/lang/String;

.field private final mMaxEntries:I

.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "fromCursor"    # Ljava/lang/String;
    .param p7, "maxEntries"    # I
    .param p8, "listFilter"    # Ljava/lang/String;
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "attrFilter"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFolderId:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFromCursor:Ljava/lang/String;

    .line 34
    iput p7, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mMaxEntries:I

    .line 35
    iput-object p8, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mListFilter:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mPath:Ljava/lang/String;

    .line 37
    iput-object p10, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mAttrFilter:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->buildAPISpecificURLFromBase()V

    .line 40
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 45
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "folders"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mFromCursor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 50
    const-string v2, "fromCursor"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    :cond_0
    iget v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mMaxEntries:I

    if-lez v1, :cond_1

    .line 54
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxEntries"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mListFilter:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 58
    const-string v2, "listFilter"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 62
    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mAttrFilter:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 66
    const-string v2, "attrFilter"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mBaseUrl:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/IndividualFolder;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
