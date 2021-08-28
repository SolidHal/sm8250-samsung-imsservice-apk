.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;
.super Ljava/lang/Object;
.source "VideoShareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$remoteUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$sessionId:I

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;IILjava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 540
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$sessionId:I

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$source:I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 543
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$sessionId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 544
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InComing Video Share is already cancelled by stack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$602(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Z)Z

    .line 546
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$502(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;I)I

    .line 547
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$source:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 552
    const-string v0, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    .local v0, "videoPath":Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v0    # "videoPath":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$filePath:Ljava/lang/String;

    .line 557
    .restart local v0    # "videoPath":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$sessionId:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newIncommingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;ILcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v1

    .line 559
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v1, :cond_2

    .line 560
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "created incoming session"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->incomingSessionDone()V

    .line 563
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$602(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Z)Z

    .line 564
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$502(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;I)I

    .line 565
    return-void
.end method
