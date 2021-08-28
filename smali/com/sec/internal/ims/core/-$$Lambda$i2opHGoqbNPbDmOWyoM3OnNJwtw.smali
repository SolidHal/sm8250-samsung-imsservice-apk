.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$i2opHGoqbNPbDmOWyoM3OnNJwtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/-$$Lambda$i2opHGoqbNPbDmOWyoM3OnNJwtw;->f$0:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/-$$Lambda$i2opHGoqbNPbDmOWyoM3OnNJwtw;->f$0:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
