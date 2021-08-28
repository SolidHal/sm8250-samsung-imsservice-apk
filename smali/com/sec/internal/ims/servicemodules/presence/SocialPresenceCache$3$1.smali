.class Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;
.super Ljava/lang/Object;
.source "SocialPresenceCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$200(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$300(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 102
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$200(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "SocialPresenceCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$102(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)Z

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$500(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V

    .line 106
    :cond_0
    return-void
.end method
