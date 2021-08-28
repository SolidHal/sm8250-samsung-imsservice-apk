.class Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$102(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)Z

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V

    .line 119
    :cond_0
    return-void
.end method
