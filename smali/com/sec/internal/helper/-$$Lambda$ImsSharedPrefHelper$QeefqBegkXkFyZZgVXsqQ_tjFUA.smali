.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$QeefqBegkXkFyZZgVXsqQ_tjFUA;->f$1:J

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getLong$9(Ljava/lang/String;JLandroid/content/SharedPreferences;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
