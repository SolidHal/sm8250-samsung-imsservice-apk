.class public Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;
.super Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;
.source "VshBinderFuntions.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field private final surfaceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;

    .line 33
    invoke-direct {p0}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private close(JLandroid/view/Surface;Z)I
    .locals 8
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "endShare"    # Z

    .line 80
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Calling close in initialized state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 83
    const/4 v0, -0x1

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 87
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 88
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Session is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result v2

    .line 93
    .local v2, "sessionId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    .line 94
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 96
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-direct {v3, p3, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;-><init>(Landroid/view/Surface;I)V

    .line 98
    .local v3, "vd":Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 99
    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .local v4, "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    goto :goto_0

    .line 101
    .end local v4    # "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 104
    .restart local v4    # "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    :goto_0
    new-instance v5, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result v6

    new-instance v7, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;

    invoke-direct {v7, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$2;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;)V

    invoke-direct {v5, v6, v4, v3, v7}, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshViewType;Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 115
    .local v5, "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    .line 117
    return v1
.end method

.method private open(JLandroid/view/Surface;IIII)I
    .locals 7
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I
    .param p7, "color"    # I

    .line 39
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Calling open in initialized state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 47
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 48
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Session is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    .line 50
    return v1

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->surfaceArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-direct {v2, p3, p7}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;-><init>(Landroid/view/Surface;I)V

    .line 57
    .local v2, "vd":Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 58
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .local v3, "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    goto :goto_0

    .line 60
    .end local v3    # "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->REMOTE:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    .line 63
    .restart local v3    # "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    :goto_0
    new-instance v4, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getSessionId()I

    move-result v5

    new-instance v6, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$1;

    invoke-direct {v6, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;)V

    invoke-direct {v4, v5, v3, v2, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshViewType;Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 74
    .local v4, "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    .line 76
    return v1

    .line 42
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .end local v2    # "vd":Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;
    .end local v3    # "vt":Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;
    .end local v4    # "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;
    :cond_3
    :goto_1
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    .line 43
    const/4 v0, -0x1

    return v0
.end method

.method private release(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public closeVshSource(JLandroid/view/Surface;Z)I
    .locals 1
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "endShare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->close(JLandroid/view/Surface;Z)I

    move-result v0

    .line 130
    .local v0, "ret":I
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->release(Landroid/view/Surface;)V

    .line 131
    return v0
.end method

.method public openVshSource(JLandroid/view/Surface;IIII)I
    .locals 1
    .param p1, "videoShareId"    # J
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I
    .param p7, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->open(JLandroid/view/Surface;IIII)I

    move-result v0

    return v0
.end method

.method public setOrientationListenerType(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .local v0, "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    goto :goto_0

    .line 148
    .end local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 149
    .restart local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    goto :goto_0

    .line 145
    .end local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 146
    .restart local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    goto :goto_0

    .line 142
    .end local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 143
    .restart local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    goto :goto_0

    .line 139
    .end local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 140
    .restart local v0    # "vshOrientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    nop

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshBinderFuntions;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 155
    const/4 v1, 0x0

    return v1
.end method
