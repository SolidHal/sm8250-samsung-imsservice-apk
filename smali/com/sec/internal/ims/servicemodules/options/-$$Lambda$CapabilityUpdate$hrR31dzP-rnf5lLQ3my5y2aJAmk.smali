.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;ZIZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$1:Z

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$2:I

    iput-boolean p4, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$3:Z

    iput-wide p5, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$1:Z

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$2:I

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$3:Z

    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityUpdate$hrR31dzP-rnf5lLQ3my5y2aJAmk;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->lambda$processContactChanged$0$CapabilityUpdate(ZIZJ)V

    return-void
.end method
