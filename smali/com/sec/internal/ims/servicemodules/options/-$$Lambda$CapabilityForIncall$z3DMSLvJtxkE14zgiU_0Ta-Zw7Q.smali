.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

.field public final synthetic f$1:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$2:I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$2:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;->f$3:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->lambda$processCallStateChanged$0$CapabilityForIncall(Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V

    return-void
.end method
