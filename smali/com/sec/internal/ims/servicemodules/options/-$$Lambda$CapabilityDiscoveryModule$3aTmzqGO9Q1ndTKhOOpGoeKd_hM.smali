.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/sec/ims/options/Capabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$3:Lcom/sec/ims/options/Capabilities;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityDiscoveryModule$3aTmzqGO9Q1ndTKhOOpGoeKd_hM;->f$3:Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$notifyCapabilitiesChanged$4$CapabilityDiscoveryModule(ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V

    return-void
.end method
