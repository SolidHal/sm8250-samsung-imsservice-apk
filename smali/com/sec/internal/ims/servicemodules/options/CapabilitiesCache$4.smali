.class Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field final synthetic val$capex:Lcom/sec/ims/options/Capabilities;

.field final synthetic val$isNotifyUpdated:Z


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/ims/options/Capabilities;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 128
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;->val$capex:Lcom/sec/ims/options/Capabilities;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;->val$isNotifyUpdated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;->val$capex:Lcom/sec/ims/options/Capabilities;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;->val$isNotifyUpdated:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V

    .line 133
    return-void
.end method
