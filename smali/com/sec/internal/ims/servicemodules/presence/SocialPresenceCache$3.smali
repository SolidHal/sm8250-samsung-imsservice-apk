.class Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;
.super Ljava/lang/Object;
.source "SocialPresenceCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 88
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->val$force:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$100(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$200(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$400(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$402(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)Z

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3$1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$300(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->val$force:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 90
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$100(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "SocialPresenceCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$402(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)Z

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$102(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)Z

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$000(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->persist()V

    .line 110
    :cond_2
    :goto_1
    return-void
.end method
