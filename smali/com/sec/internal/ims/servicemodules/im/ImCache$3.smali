.class Lcom/sec/internal/ims/servicemodules/im/ImCache$3;
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
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
        ">;",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
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

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Landroid/util/Pair;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;"
        }
    .end annotation

    .line 136
    .local p1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache miss. attempt to load from db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$100(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 138
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t load from db."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$400(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->create(Landroid/util/Pair;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    return-object p1
.end method

.method protected entryRemoved(ZLandroid/util/Pair;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p3, "oldValue"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p4, "newValue"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ")V"
        }
    .end annotation

    .line 149
    .local p2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;>;"
    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CachingMessage#entryRemoved: id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->access$500(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p2, Landroid/util/Pair;

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->entryRemoved(ZLandroid/util/Pair;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method
