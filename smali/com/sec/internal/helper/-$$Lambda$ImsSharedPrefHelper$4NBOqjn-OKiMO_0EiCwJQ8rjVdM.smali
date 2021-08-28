.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$4NBOqjn-OKiMO_0EiCwJQ8rjVdM;->f$1:I

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getInt$8(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
