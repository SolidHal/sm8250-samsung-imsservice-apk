.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;
.super Ljava/lang/Object;
.source "VideoShareModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sec/internal/ims/servicemodules/csh/VideoShare;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field final synthetic val$contactUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 382
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 386
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createShare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$400(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newOutgoingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 394
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->startQutgoingSession()V

    .line 398
    :cond_1
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->call()Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    return-object v0
.end method
