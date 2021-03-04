<?php

namespace App\Entity;

use App\Repository\CategoryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CategoryRepository::class)
 */
class Category
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $type;

    /**
     * @ORM\Column(type="integer")
     */
    private $xpEvents;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $categorySport;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $categoryEvent;

    /**
     * @ORM\ManyToMany(targetEntity=Event::class, mappedBy="category")
     */
    private $events;

    public function __construct()
    {
        $this->events = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(string $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getXpEvents(): ?int
    {
        return $this->xpEvents;
    }

    public function setXpEvents(int $xpEvents): self
    {
        $this->xpEvents = $xpEvents;

        return $this;
    }

    public function getCategorySport(): ?string
    {
        return $this->categorySport;
    }

    public function setCategorySport(string $categorySport): self
    {
        $this->categorySport = $categorySport;

        return $this;
    }

    public function getCategoryEvent(): ?string
    {
        return $this->categoryEvent;
    }

    public function setCategoryEvent(string $categoryEvent): self
    {
        $this->categoryEvent = $categoryEvent;

        return $this;
    }

    /**
     * @return Collection|Event[]
     */
    public function getEvents(): Collection
    {
        return $this->events;
    }

    public function addEvent(Event $event): self
    {
        if (!$this->events->contains($event)) {
            $this->events[] = $event;
            $event->addCategory($this);
        }

        return $this;
    }

    public function removeEvent(Event $event): self
    {
        if ($this->events->removeElement($event)) {
            $event->removeCategory($this);
        }

        return $this;
    }
}
