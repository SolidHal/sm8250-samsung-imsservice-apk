.class public final Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
.super Ljava/lang/Object;
.source "ResipSlmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StandaloneMessage"
.end annotation


# instance fields
.field public isFile:Z

.field public mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

.field public mFileSize:J

.field public mId:I

.field public mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

.field public mIsChatbotMessage:Z

.field public mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

.field public mSessionHandle:Ljava/lang/Integer;

.field public mStatusCallback:Landroid/os/Message;

.field public mUaHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    return-void
.end method
