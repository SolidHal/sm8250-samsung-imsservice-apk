.class Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 103
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->val$force:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$402(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)Z

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->val$force:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$402(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)Z

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$102(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)Z

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->persist()V

    .line 123
    :cond_2
    :goto_1
    return-void
.end method
