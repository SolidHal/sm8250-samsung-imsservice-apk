.class Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$2;
.super Ljava/lang/Object;
.source "SocialPresenceCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->resetPresenceStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->access$000(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->reset()V

    .line 80
    return-void
.end method
