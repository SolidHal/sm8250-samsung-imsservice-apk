.class Lcom/sec/internal/ims/servicemodules/im/ImCache$1;
.super Landroid/util/LruCache;
.source "ImCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p2, "arg0"    # I

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p4, "newValue"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveSessions#entryRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 91
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;->entryRemoved(ZLjava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method
