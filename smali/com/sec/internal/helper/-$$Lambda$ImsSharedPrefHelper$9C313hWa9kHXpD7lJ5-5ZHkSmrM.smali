.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$9C313hWa9kHXpD7lJ5-5ZHkSmrM;->f$1:I

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$2(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    return-void
.end method
