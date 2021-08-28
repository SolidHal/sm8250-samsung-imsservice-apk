.class Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;
.super Ljava/lang/Object;
.source "ImageShareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field final synthetic val$ft:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

.field final synthetic val$remoteUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 372
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$sessionId:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$ft:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$sessionId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$ft:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newIncommingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    .line 377
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "created incoming session"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->incomingSessionDone()V

    .line 381
    :cond_0
    return-void
.end method
