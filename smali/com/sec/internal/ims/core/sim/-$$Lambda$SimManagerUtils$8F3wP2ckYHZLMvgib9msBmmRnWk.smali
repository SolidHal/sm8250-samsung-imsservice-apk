.class public final synthetic Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$8F3wP2ckYHZLMvgib9msBmmRnWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$8F3wP2ckYHZLMvgib9msBmmRnWk;->f$0:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$8F3wP2ckYHZLMvgib9msBmmRnWk;->f$0:Landroid/content/ContentValues;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->lambda$convertMnoInfoToString$1(Landroid/content/ContentValues;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
