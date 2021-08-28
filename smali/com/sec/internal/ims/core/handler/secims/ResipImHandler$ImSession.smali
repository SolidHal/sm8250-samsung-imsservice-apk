.class public final Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
.super Ljava/lang/Object;
.source "ResipImHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ImSession"
.end annotation


# instance fields
.field protected mAcceptCallback:Landroid/os/Message;

.field protected mAddParticipantsCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mChangeGCAliasCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mChangeGCIconCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mChangeGCLeaderCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mChangeGCSubjectCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mChatId:Ljava/lang/String;

.field protected mFirstMessageCallback:Landroid/os/Message;

.field protected mIsSnF:Z

.field protected mRejectCallback:Landroid/os/Message;

.field protected mRemoveParticipantsCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mSendMessageCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mSessionHandle:Ljava/lang/Integer;

.field protected mStartCallback:Landroid/os/Message;

.field protected mStartProvisionalCallback:Landroid/os/Message;

.field protected mStartSyncCallback:Landroid/os/Message;

.field protected mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

.field protected final mUaHandle:I


# direct methods
.method protected constructor <init>(IZI)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "isSnf"    # Z
    .param p3, "uaHandle"    # I

    .line 221
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;-><init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;ZI)V

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    .line 223
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;ZI)V
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "startCallback"    # Landroid/os/Message;
    .param p3, "startSyncCallback"    # Landroid/os/Message;
    .param p4, "startProvisionalCallback"    # Landroid/os/Message;
    .param p5, "isSnF"    # Z
    .param p6, "uaHandle"    # I

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    .line 212
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    .line 214
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 215
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartProvisionalCallback:Landroid/os/Message;

    .line 216
    iput-boolean p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mIsSnF:Z

    .line 217
    iput p6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    .line 218
    return-void
.end method


# virtual methods
.method protected findAndRemoveCallback(Ljava/lang/String;)Landroid/os/Message;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 227
    .local v0, "callBack":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-object v0
.end method
