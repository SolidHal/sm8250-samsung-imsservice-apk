.class Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$1;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->loadCapabilityStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->load()V

    .line 85
    return-void
.end method
