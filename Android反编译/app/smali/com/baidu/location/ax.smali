.class interface abstract Lcom/baidu/location/ax;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x36

.field public static final B:I = 0x37

.field public static final C:I = 0x33

.field public static final D:I = 0x35

.field public static final E:I = 0xd

.field public static final F:I = 0x2ee0

.field public static final G:I = 0x16

.field public static final H:I = 0x41

.field public static final I:Ljava/lang/String;

.field public static final J:I = 0xcf

.field public static final K:I = 0x15

.field public static final L:I = 0x1

.field public static final M:I = 0x3d

.field public static final N:I = 0x40

.field public static final O:I = 0x1400

.field public static final P:I = 0xcd

.field public static final Q:I = 0xb

.field public static final b:I = 0xcc

.field public static final byte:I = 0x1

.field public static final c:I = 0xd1

.field public static final case:I = 0x2b

.field public static final char:I = 0x1a

.field public static final d:I = 0x0

.field public static final do:I = 0x19

.field public static final e:I = 0x2a

.field public static final else:I = 0xc

.field public static final f:I = 0x34

.field public static final for:I = 0x2

.field public static final g:I = 0x6e

.field public static final goto:I = 0xe

.field public static final h:I = 0x1f

.field public static final i:Ljava/lang/String; = "baidu_location_service"

.field public static final if:I = 0xcb

.field public static final int:I = 0x6f

.field public static final j:I = 0xce

.field public static final k:I = 0x3

.field public static final l:I = 0x65

.field public static final long:I = 0xca

.field public static final m:I = 0x39

.field public static final n:I = 0x1c

.field public static final new:I = 0xd0

.field public static final o:I = 0x17

.field public static final p:I = 0x1b

.field public static final q:I = 0xf

.field public static final r:I = 0x4

.field public static final s:I = 0x3f

.field public static final t:I = 0xc9

.field public static final try:I = 0x5c

.field public static final u:I = 0x3e

.field public static final v:I = 0x5b

.field public static final void:I = 0x18

.field public static final w:I = 0x47

.field public static final x:I = 0x29

.field public static final y:I = 0x51

.field public static final z:I = 0x38


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/tempdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/ax;->I:Ljava/lang/String;

    return-void
.end method
