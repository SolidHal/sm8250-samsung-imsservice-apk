.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

.field public final synthetic f$1:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;->f$1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;->f$1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->lambda$processCallStateChangedOnDeregi$1$CapabilityForIncall(Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    return-void
.end method
