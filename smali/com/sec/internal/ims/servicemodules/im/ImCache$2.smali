.class Lcom/sec/internal/ims/servicemodules/im/ImCache$2;
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
        "Ljava/lang/String;",
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

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache miss. attempt to load from db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$100(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 115
    .local v0, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t load from db."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    return-object v1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$200(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->create(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->entryRemoved(ZLjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p4, "newValue"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$300(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImSessions#entryRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    .line 130
    :cond_0
    return-void
.end method
