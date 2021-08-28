.class Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;
.super Ljava/lang/Object;
.source "ImageShareModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sec/internal/ims/servicemodules/csh/ImageShare;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field final synthetic val$contactUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 189
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createShare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newOutgoingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    .line 196
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->startQutgoingSession()V

    .line 198
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastOutgoingSucceeded(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->call()Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object v0

    return-object v0
.end method
