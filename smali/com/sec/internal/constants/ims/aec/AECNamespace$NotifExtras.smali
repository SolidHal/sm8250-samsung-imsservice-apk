.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$NotifExtras;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifExtras"
.end annotation


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final SENDER_ID:Ljava/lang/String; = "senderId"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
