.class public Lcom/sec/internal/ims/servicemodules/csh/CshCache;
.super Ljava/lang/Object;
.source "CshCache.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

.field private static imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;


# instance fields
.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->LOG_TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 29
    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 30
    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;
    .locals 1

    .line 51
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 54
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    return-object v0
.end method

.method public static getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;
    .locals 1
    .param p0, "imsService"    # Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    if-nez v0, :cond_0

    .line 38
    sput-object p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 40
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;
    .locals 1
    .param p0, "imsService"    # Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    if-nez v0, :cond_0

    .line 45
    sput-object p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 47
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteSession(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 90
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove share sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 92
    return-void
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 1
    .param p1, "sessionId"    # I

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    .line 69
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    return-object v0
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 4
    .param p1, "sharedId"    # J

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    .line 76
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 77
    return-object v1

    .line 74
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 1
    .param p1, "idx"    # I

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59
    return-void
.end method

.method public newIncommingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 3
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;
    .param p2, "sessionId"    # I
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "ft"    # Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    .line 120
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    .line 122
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 123
    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 125
    iput-object p3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 126
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/StorageEnvironment;->generateStorePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 127
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->getSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 129
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->mimeType:Ljava/lang/String;

    .line 131
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    .line 132
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->setSessionId(I)V

    .line 133
    return-object v1
.end method

.method public newIncommingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;ILcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 3
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
    .param p2, "sessionId"    # I
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "videoPath"    # Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    .line 156
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 157
    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 158
    iput-object p3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 159
    iput-object p4, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 164
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    .line 165
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->setSessionId(I)V

    .line 166
    return-object v1
.end method

.method public newOutgoingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 3
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;
    .param p2, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "filePath"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    .line 106
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 107
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 109
    iput-object p2, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 110
    iput-object p3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 112
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    .line 114
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    return-object v1
.end method

.method public newOutgoingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 3
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
    .param p2, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "videoPath"    # Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    .line 139
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 140
    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 141
    iput-object p2, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 142
    iput-object p3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 147
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    .line 149
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    return-object v1
.end method

.method public putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added share ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
