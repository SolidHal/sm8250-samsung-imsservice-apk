.class public final Lcom/google/android/gms/internal/zzeea;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzmys:I

.field public static final enum zzmyt:I

.field private static final synthetic zzmyu:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zzeea;->zzmys:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/zzeea;->zzmyt:I

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzeea;->zzmyu:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
